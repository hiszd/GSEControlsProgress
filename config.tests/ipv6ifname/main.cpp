/* Generated by configure */
#include <sys/types.h>
#include <sys/socket.h>
#include <net/if.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    char buf[IFNAMSIZ];
    if_nametoindex("eth0");
    if_indextoname(1, buf);
    if_freenameindex(if_nameindex());
    /* END TEST */
    return 0;
}