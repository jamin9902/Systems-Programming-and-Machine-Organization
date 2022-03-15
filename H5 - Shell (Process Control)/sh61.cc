#include "sh61.hh"
#include <cstring>
#include <cerrno>
#include <vector>
#include <sys/stat.h>
#include <sys/wait.h>

// For the love of God
#undef exit
#define exit __DO_NOT_CALL_EXIT__READ_PROBLEM_SET_DESCRIPTION__


// struct command
//    Data structure describing a command. Add your own stuff.

struct command {
    std::vector<std::string> args;
    pid_t pid = -1;      // process ID running this command, -1 if none

    command* prev = nullptr;
    command* next = nullptr;

    int link = 1;
    int exit_status;

    // Handle redirections
    std::string file;
    std::string filename_out;
    std::string filename_in;
    std::string filename_err;

    bool out = false;
    bool in = false;
    bool err = false;

    command();
    ~command();

    pid_t run();
};

// command::command()
//    This constructor function initializes a `command` structure. You may
//    add stuff to it as you grow the command structure.

command::command() {
}

// command::~command()
//    This destructor function is called to delete a command.

command::~command() {
    delete this -> next;
}

// COMMAND EXECUTION

// command::run()
//    Create a single child process running the command in `this`.
//    Sets `this -> pid` to the pid of the child process and returns `this -> pid`.
//
//    PART 1: Fork a child process and run the command using `execvp`.
//       This will require creating an array of `char*` arguments using
//       `this -> args[N].c_str()`.
//    PART 5: Set up a pipeline if appropriate. This may require creating a
//       new pipe (`pipe` system call), and/or replacing the child process's
//       standard input/output with parts of the pipe (`dup2` and `close`).
//       Draw pictures!
//    PART 7: Handle redirections.
//    PART 8: Update the `command` structure and this function to support
//       setting the child process’s process group. To avoid race conditions,
//       this will require TWO calls to `setpgid`.

// File descriptors
int fd_prev[2];
int fd_curr[2];


void fd_switch(int f, int curr){
    if (f < 0){
        fprintf(stderr, "No such file or directory\n");
        _exit(EXIT_FAILURE);
    } else {
        dup2(f, curr);
        close(f);
    }
}


pid_t command::run() {
    if (this -> link == TYPE_PIPE && pipe(fd_curr) < 0) {
            // pipe failure
    }

    std::vector <char*> args_e;
    for (auto i = args.begin(); i != args.end(); ++i) {
        args_e.push_back((char*)(*i).c_str());
    }
    args_e.push_back(NULL);

    pid_t proc_id;
    proc_id = fork();
    if (proc_id != 0) {
        if (!this -> args[0].compare("cd") && chdir(this -> args[1].c_str()) < 0) {
            // error
        }
        if (this -> prev != nullptr && this -> prev -> link == TYPE_PIPE) {
            close(fd_prev[0]);
            close(fd_prev[1]);
        }
        if (this -> link == TYPE_PIPE) {
            fd_prev[0] = fd_curr[0];
            fd_prev[1] = fd_curr[1];
        }
    } else {
        if (!this -> args[0].compare("cd")) {
            if (chdir(this -> args[1].c_str()) >= 0) {
                _exit(0);
            } else {
                _exit(1);
            }
        }
        if (this -> prev != nullptr && this -> prev -> link == TYPE_PIPE) {
            dup2(fd_prev[0], 0);
            close(fd_prev[0]);
            close(fd_prev[1]);
        }
        if (this -> link == TYPE_PIPE) {
            close(fd_curr[0]);
            dup2(fd_curr[1], 1);
            close(fd_curr[1]);
        }

        if (this -> out) {
            int fd_out = open(this -> filename_out.c_str(), O_CREAT | O_TRUNC | O_WRONLY, 0666);
            fd_switch(fd_out, STDOUT_FILENO);
        }
        if (this -> in) {
            int fd_in = open(this -> filename_in.c_str(), O_RDONLY);
            fd_switch(fd_in, STDIN_FILENO);
        }
        if (this -> err) {
            int fd_err = open(this -> filename_err.c_str(), O_CREAT | O_TRUNC | O_WRONLY, 0666);
            fd_switch(fd_err, STDERR_FILENO);
        }

        int run = execvp(args_e[0], args_e.data());
        if (run == -1) {
            _exit(EXIT_FAILURE);
        }
    }
    this -> pid = proc_id;
    return proc_id;
}

// run_list(c)
//    Run the command *list* starting at `c`. Initially this just calls
//    `c -> run()` and `waitpid`; you’ll extend it to handle command lists,
//    conditionals, and pipelines.
//
//    It is possible, and not too ugly, to handle lists, conditionals,
//    *and* pipelines entirely within `run_list`, but many students choose
//    to introduce `run_conditional` and `run_pipeline` functions that
//    are called by `run_list`. It’s up to you.
//
//    PART 1: Start the single command `c` with `c -> run()`,
//        and wait for it to finish using `waitpid`.
//    The remaining parts may require that you change `struct command`
//    (e.g., to track whether a command is in the background)
//    and write code in `command::run` (or in helper functions).
//    PART 2: Treat background commands differently.
//    PART 3: Introduce a loop to run all commands in the list.
//    PART 4: Change the loop to handle conditionals.
//    PART 5: Change the loop to handle pipelines. Start all processes in
//       the pipeline in parallel. The status of a pipeline is the status of
//       its LAST command.
//    PART 8: - Make sure every process in the pipeline has the same
//         process group, `pgid`.
//       - Call `claim_foreground(pgid)` before waiting for the pipeline.
//       - Call `claim_foreground(0)` once the pipeline is complete.

command* chain_end (command* c) {
    while(c != nullptr && c -> link != TYPE_SEQUENCE && c -> link != TYPE_BACKGROUND && c -> link != TYPE_REDIRECT_OP) {
        c = c -> next;
    }
    return c;
}


command* run_pipeline (command* c) {
    if (c -> link == TYPE_PIPE) {
        while (c -> link == TYPE_PIPE) {
            c -> run();
            c = c -> next;
        }
    }
    c -> run();
    pid_t wait = waitpid(c -> pid, &c -> exit_status, 0);
    if (wait == -1) {
          fprintf(stderr, "Error (waitpid)");
    }
    return c;
}


void run_conditional (command* c) {
    while (c) {
        run_pipeline(c);
        while (c -> link == TYPE_PIPE) {
            c = c -> next;
        }
        if (c -> link == TYPE_SEQUENCE || c -> link == TYPE_BACKGROUND) {
            return;
        } else if (c -> link == TYPE_OR) {
            if (WEXITSTATUS(c -> exit_status) == 0 && WIFEXITED(c -> exit_status)) {
                while (c -> link == TYPE_PIPE || c -> link == TYPE_OR) {
                    c = c -> next;
                    if (c -> link == TYPE_SEQUENCE || c -> link == TYPE_BACKGROUND) {
                        return;
                    }
                    if (!c) {
                        break;
                    }
                }
            }
        }
        else if (c -> link == TYPE_AND) {
            if (WEXITSTATUS(c -> exit_status) != 0 || !WIFEXITED(c -> exit_status)) {
                while (c -> link == TYPE_PIPE || c -> link == TYPE_AND) {
                    c = c -> next;
                    if (c -> link == TYPE_SEQUENCE || c -> link == TYPE_BACKGROUND) {
                        return;
                    }
                    if (!c) {
                        break;
                    }
                }
            }
        }
        c = c -> next;
    }
    return;
}


void run_list(command* c) {
    while(c) {
        command* end = chain_end(c);
        if (end -> link == TYPE_BACKGROUND) {
            pid_t proc_id = fork();
            if (!proc_id) {
                run_conditional(c);
                _exit(c -> exit_status);
            }
        } else {
            run_conditional(c);
            if (!c -> next) {
                return;
            }
        }
        if (end) {
            c = end -> next;
        }
    }
    return;
}


// parse_line(s)
//    Parse the command list in `s` and return it. Returns `nullptr` if
//    `s` is empty (only spaces). You’ll extend it to handle more token
//    types.

command* parse_line(const char* s) {

    command* curr = nullptr;
    command* head = nullptr;
    command* tail = nullptr;
    shell_parser parser(s);

    for (auto i = parser.begin(); i != parser.end(); ++i) {
        int type = i.type();
        if (type == TYPE_SEQUENCE || type == TYPE_BACKGROUND || type == TYPE_PIPE || type == TYPE_AND || type == TYPE_OR) {
            tail = curr;
            tail -> link = i.type();
            curr = nullptr;
        }
        if (type == TYPE_NORMAL) {
            if (!curr) {
                curr = new command;
                if (!tail) {
                    head = curr;
                } else {
                    tail -> next = curr;
                    curr -> prev = tail;
                }
            }
            curr -> args.push_back(i.str());
        }
        if (type == TYPE_REDIRECT_OP) {
            tail = curr;
            tail -> link = i.type();

            std::string str = i.str();
            if (!str.compare("2>")) {
                ++i;
                tail -> err = true;
                tail -> filename_err = i.str();
            }
            if (!str.compare(">")) {
                ++i;
                tail -> out = true;
                tail -> filename_out = i.str();
            }
            if (!str.compare("<")) {
                ++i;
                tail -> in = true;
                tail -> filename_in = i.str();
            }
        }
    }
    return head;
}


int main(int argc, char* argv[]) {
    FILE* command_file = stdin;
    bool quiet = false;

    // Check for `-q` option: be quiet (print no prompts)
    if (argc > 1 && strcmp(argv[1], "-q") == 0) {
        quiet = true;
        --argc, ++argv;
    }

    // Check for filename option: read commands from file
    if (argc > 1) {
        command_file = fopen(argv[1], "rb");
        if (!command_file) {
            perror(argv[1]);
            return 1;
        }
    }

    // - Put the shell into the foreground
    // - Ignore the SIGTTOU signal, which is sent when the shell is put back
    //   into the foreground
    claim_foreground(0);
    set_signal_handler(SIGTTOU, SIG_IGN);

    char buf[BUFSIZ];
    int bufpos = 0;
    bool needprompt = true;

    while (!feof(command_file)) {
        // Print the prompt at the beginning of the line
        if (needprompt && !quiet) {
            printf("sh61[%d]$ ", getpid());
            fflush(stdout);
            needprompt = false;
        }

        // Read a string, checking for error or EOF
        if (fgets(&buf[bufpos], BUFSIZ - bufpos, command_file) == nullptr) {
            if (ferror(command_file) && errno == EINTR) {
                // ignore EINTR errors
                clearerr(command_file);
                buf[bufpos] = 0;
            } else {
                if (ferror(command_file)) {
                    perror("sh61");
                }
                break;
            }
        }

        // If a complete command line has been provided, run it
        bufpos = strlen(buf);
        if (bufpos == BUFSIZ - 1 || (bufpos > 0 && buf[bufpos - 1] == '\n')) {
            if (command* c = parse_line(buf)) {
                run_list(c);
                delete c;
            }
            bufpos = 0;
            needprompt = 1;
        }

        // Handle zombie processes and/or interrupt requests
        while (waitpid(-1, NULL, WNOHANG) > 0) {}
    }

    return 0;
}
