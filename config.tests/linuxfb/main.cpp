/* Generated by configure */
#include <linux/fb.h>
#include <sys/kd.h>
#include <sys/ioctl.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    fb_fix_screeninfo finfo;
    fb_var_screeninfo vinfo;
    int fd = 3;
    ioctl(fd, FBIOGET_FSCREENINFO, &finfo);
    ioctl(fd, FBIOGET_VSCREENINFO, &vinfo);
    /* END TEST */
    return 0;
}
