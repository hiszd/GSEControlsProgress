/* Generated by configure */
#include <smmintrin.h>
int main(int argc, char **argv)
{
    (void)argc; (void)argv;
    /* BEGIN TEST: */
    __m128 a = _mm_setzero_ps();
    _mm_ceil_ps(a);
    __m128i result = _mm_mullo_epi32(_mm_set1_epi32(42), _mm_set1_epi32(64));
    (void)result;
    /* END TEST */
    return 0;
}