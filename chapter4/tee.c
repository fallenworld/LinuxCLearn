#include <stdio.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include "debug.h"

typedef int Boolean;
#define TRUE  1
#define FALSE 0

int main(int argc, char* argv[])
{

    if (argc < 2 || strcmp(argv[1], "--help") == 0)
    {
        usageErr("%s file [-a]\n", argv[0]);
    }

    //是否在文件末尾添加数据
    Boolean isAppend = FALSE;
    char opt;
    while ((opt = getopt(argc, argv, "a")) != -1)
    {
        if (opt == 'a')
        {
            isAppend = TRUE;
        }
    }

    //打开文件
    int openFlags = O_WRONLY | O_CREAT;
    if (isAppend)
    {
        openFlags |= O_APPEND;
    }
    else
    {
        openFlags |= O_TRUNC;
    }
    int fd = open(argv[1], openFlags, S_IRUSR | S_IWUSR);
    if (fd == -1)
    {
        errExit("open");
    }

    //输出数据
#define BUFFER_SIZE 128
    char buffer[BUFFER_SIZE];
    int count;
    while ((count = read(STDIN_FILENO, buffer, BUFFER_SIZE)) != 0)
    {
        if (count == -1)
        {
            errExit("read");
        }
        write(STDOUT_FILENO, buffer, count);
        write(fd, buffer, count);
    }
    close(fd);
#undef BUFFER_SIZE
    return 0;
}
