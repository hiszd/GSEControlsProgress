/* Generated by configure */
#include <nmmintrin.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    __m128i a = _mm_setzero_si128();
    __m128i b = _mm_set1_epi32(42);
    (void) _mm_cmpestrm(a, 16, b, 16, 0);
    /* END TEST */
    return 0;
}
