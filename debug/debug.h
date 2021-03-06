#ifndef DEBUG_H_
#define DEBUG_H_

#ifdef __GNUC__

    /* This macro stops 'gcc -Wall' complaining that "control reaches
       end of non-void function" if we use the following functions to
       terminate main() or some other non-void function. */

#define NORETURN __attribute__ ((__noreturn__))
#else
#define NORETURN
#endif

void errMsg(const char *format, ...);

void errExit(const char *format, ...);

void err_exit(const char *format, ...);

void errExitEN(int errnum, const char *format, ...) ;

void fatal(const char *format, ...);

void usageErr(const char *format, ...);

void cmdLineErr(const char *format, ...);

#endif //DEBUG_H_
