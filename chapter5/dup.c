#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>
#include <debug.h>

int dup_my(int oldFd)
{
    return fcntl(oldFd, F_DUPFD, 0);
}

int dup2_my(int oldFd, int newFd)
{
    //检查oldFd是否有效
    if (fcntl(oldFd, F_GETFL) == -1)
    {
        errno = EBADF;
        return -1;
    }
    else if (oldFd == newFd)
    {
        return oldFd;
    }
    else
    {
        close(newFd);
        return fcntl(oldFd, F_DUPFD, newFd);
    }
}

int main(int argc, char* argv[])
{
    int fd3 = open("/home/fallenworld/temp/out.txt", O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IWUSR);
    if (fd3 == -1)
    {
        errExit("cant open file");
    }
    int fd4 = dup_my(fd3);
    int fd5 = dup2_my(fd3, fd3);
    write(fd3, "aaa", strlen("aaa"));
    lseek(fd3, 1, SEEK_SET);
    write(fd4, "b", strlen("b"));
    lseek(fd4, 0, SEEK_END);
    write(fd5, "ccc", strlen("ccc"));
    return 0;
}
