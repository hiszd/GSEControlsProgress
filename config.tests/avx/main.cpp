/* Generated by configure */
#include <immintrin.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    __m256d a = _mm256_setzero_pd();
    __m256d b = _mm256_set1_pd(42.42);
    (void) _mm256_add_pd(a, b);
    /* END TEST */
    return 0;
}