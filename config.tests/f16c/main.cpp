/* Generated by configure */
#include <immintrin.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    __m128i a = _mm_setzero_si128();
    __m128 b = _mm_cvtph_ps(a);
    __m256 b256 = _mm256_cvtph_ps(a);
    (void) _mm_cvtps_ph(b, 0);
    (void) _mm256_cvtps_ph(b256, 0);
    /* END TEST */
    return 0;
}
