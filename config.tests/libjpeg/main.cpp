/* Generated by configure */
#include <sys/types.h>
#include <stdio.h>
extern "C" {
#include <jpeglib.h>
}
j_compress_ptr cinfo;
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    jpeg_create_compress(cinfo);
    /* END TEST */
    return 0;
}
