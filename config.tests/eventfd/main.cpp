/* Generated by configure */
#include <sys/eventfd.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    eventfd_t value;
    int fd = eventfd(0, EFD_CLOEXEC);
    eventfd_read(fd, &value);
    eventfd_write(fd, value);
    /* END TEST */
    return 0;
}
