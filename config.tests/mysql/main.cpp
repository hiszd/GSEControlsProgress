/* Generated by configure */
#if defined(WIN32) || defined(_WIN32) || defined(__WIN32__) || defined(WIN64) || defined(_WIN64) || defined(__WIN64__)
#  include <windows.h>
#endif
#include <mysql.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    mysql_get_client_version();
    /* END TEST */
    return 0;
}