/* Generated by configure */
#include <pmmintrin.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    __m128d a = _mm_set1_pd(6.28);
    __m128d b = _mm_set1_pd(3.14);
    __m128d result = _mm_addsub_pd(a, b);
    (void) _mm_movedup_pd(result);
    /* END TEST */
    return 0;
}
