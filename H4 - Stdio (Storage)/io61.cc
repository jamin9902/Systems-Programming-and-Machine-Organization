#include "io61.hh"
#include <sys/types.h>
#include <sys/stat.h>
#include <climits>
#include <cerrno>

// io61.c
//    YOUR CODE HERE!

const off_t CSIZE = 16392;

// io61_file
//    Data structure for io61 file wrappers. Add your own stuff.

struct io61_file {
    int fd;
    int mode;
    unsigned char cache[CSIZE];
    off_t tag;    // file offset of first byte in cache (0 when file is opened)
    off_t e_tag;  // file offset one past last valid byte in cache
    off_t p_tag;  // file offset of next char to read in cache
};


// io61_fdopen(fd, mode)
//    Return a new io61_file for file descriptor `fd`. `mode` is
//    either O_RDONLY for a read-only file or O_WRONLY for a
//    write-only file. You need not support read/write files.

io61_file* io61_fdopen(int fd, int mode) {
    assert(fd >= 0);
    io61_file* f = new io61_file;
    f -> e_tag = 0;
    f -> fd = fd;
    f -> mode = mode;
    return f;
}


// io61_close(f)
//    Close the io61_file `f` and release all its resources.

int io61_close(io61_file* f) {
    io61_flush(f);
    int r = close(f->fd);
    delete f;
    return r;
}


// io61_fill(f)
//    Fill the read cache starting from offset `e_tag`. Returns -1 on error.

int io61_fill(io61_file* f) {
    ssize_t n = read(f -> fd, f -> cache, CSIZE);
    // reset cache
    f -> p_tag = f -> tag = f -> e_tag;
    if (n < 0) {
        return -1;
    }
    f -> e_tag = f -> tag + n;
    return 0;
}


// io61_readc(f)
//    Read a single (unsigned) character from `f` and return it. Returns EOF
//    (which is -1) on error or end-of-file.

int io61_readc(io61_file* f) {
    if (f -> e_tag == f -> p_tag) {
        if (io61_fill(f) || f -> e_tag == f -> p_tag) {
            return -1;
        }
    }
    unsigned char cache = f -> cache[f -> p_tag - f -> tag];
    f -> p_tag ++;
    return cache;
}


// io61_read(f, buf, sz)
//    Read up to `sz` characters from `f` into `buf`. Returns the number of
//    characters read on success; normally this is `sz`. Returns a short
//    count, which might be zero, if the file ended before `sz` characters
//    could be read. Returns -1 if an error occurred before any characters
//    were read.

ssize_t io61_read(io61_file* f, unsigned char* buf, size_t sz) {
    size_t nread = 0;
    while (nread != sz) {
        if (f -> e_tag == f -> p_tag) {
            if (io61_fill(f)){
                return -1;
            }
            if (f -> e_tag == f -> p_tag) {
                break;
            }
        }
        size_t size = std::min((size_t) f -> e_tag - f -> p_tag, sz - nread);
        memcpy(&buf[nread], &f -> cache[f -> p_tag - f -> tag], size);
        nread += size;
        f -> p_tag += size;
    }
    return nread;
}


// io61_writec(f)
//    Write a single character `ch` to `f`. Returns 0 on success or
//    -1 on error.

int io61_writec(io61_file* f, int ch) {
    if (f -> e_tag != f -> p_tag || !io61_flush(f)) {
        f -> cache[f -> p_tag - f -> tag] = ch;
        f -> p_tag ++;
        return 0;
    }
    return -1;
}


// io61_write(f, buf, sz)
//    Write `sz` characters from `buf` to `f`. Returns the number of
//    characters written on success; normally this is `sz`. Returns -1 if
//    an error occurred before any characters were written.

ssize_t io61_write(io61_file* f, const unsigned char* buf, size_t sz) {
    size_t nwritten = 0;
    while (nwritten != sz) {
        if (f -> e_tag != f -> p_tag || !io61_flush(f)) {
          size_t size = std::min((size_t) f -> e_tag - f -> p_tag, sz - nwritten);
          memcpy(&f -> cache[f -> p_tag - f -> tag], &buf[nwritten], size);
          f -> p_tag += size;
          nwritten += size;
        } else {
          return -1;
        }
    }
    return nwritten;
}


// io61_flush(f)
//    Forces a write of all buffered data written to `f`.
//    If `f` was opened read-only, io61_flush(f) may either drop all
//    data buffered for reading, or do nothing.

int io61_flush(io61_file* f) {
    size_t nwrite = write(f -> fd, f -> cache, f -> p_tag - f -> tag);
    if ((int) nwrite < 0) {
        return -1;
    }
    f -> e_tag += CSIZE;
    f -> tag = f -> p_tag;
    return 0;
}


// io61_seek(f, pos)
//    Change the file pointer for file `f` to `pos` bytes into the file.
//    Returns 0 on success and -1 on failure.

int io61_seek(io61_file* f, off_t pos) {
    if (f -> mode == O_WRONLY) {
        io61_flush(f);
        off_t n_tag = lseek(f -> fd, pos, SEEK_SET);
        if (n_tag != -1) {
            f -> e_tag = f -> tag + CSIZE;
            f -> p_tag = f -> tag = n_tag;
            return 0;
        }
    } else if (f -> mode == O_RDONLY) {
        int off = pos % CSIZE;
        if (pos >= f -> tag && pos < f -> e_tag) {
            f -> p_tag = pos;
            return 0;
        }
        off_t n_tag = lseek(f -> fd, pos - off, SEEK_SET);
        if (n_tag != -1) {
            f -> e_tag = n_tag;
            io61_fill(f);
            f -> p_tag += off;
            return 0;
        }
    }
    return -1;
}


// You shouldn't need to change these functions.

// io61_open_check(filename, mode)
//    Open the file corresponding to `filename` and return its io61_file.
//    If `!filename`, returns either the standard input or the
//    standard output, depending on `mode`. Exits with an error message if
//    `filename != nullptr` and the named file cannot be opened.

io61_file* io61_open_check(const char* filename, int mode) {
    int fd;
    if (filename) {
        fd = open(filename, mode, 0666);
    } else if ((mode & O_ACCMODE) == O_RDONLY) {
        fd = STDIN_FILENO;
    } else {
        fd = STDOUT_FILENO;
    }
    if (fd < 0) {
        fprintf(stderr, "%s: %s\n", filename, strerror(errno));
        exit(1);
    }
    return io61_fdopen(fd, mode & O_ACCMODE);
}


// io61_filesize(f)
//    Return the size of `f` in bytes. Returns -1 if `f` does not have a
//    well-defined size (for instance, if it is a pipe).

off_t io61_filesize(io61_file* f) {
    struct stat s;
    int r = fstat(f->fd, &s);
    if (r >= 0 && S_ISREG(s.st_mode)) {
        return s.st_size;
    } else {
        return -1;
    }
}
