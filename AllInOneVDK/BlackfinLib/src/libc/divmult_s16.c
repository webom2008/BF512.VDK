/**************************************************************************
 *
 * divmult_s16.c : $Revision: 1.1.12.1 $
 * (c) Copyright 2010 Analog Devices Inc. All rights reserved.
 *
 *************************************************************************/

#if defined(__DOCUMENTATION__)

    Function: divmult_s16 - return multiplier and shift amount required
                            to divide a short integer by a divisor.

    Synopsis:

        int2x16 divmult_s16(int divisor);

    Description:

        This function computes the multiplier and shift amount required
        to emit code that does division by multiplication of a short integer
        numerator.
        The code that knows how to use these results is in the compiler.

    Error Conditions:

        None, all inputs valid.

    Algorithm:

        The algorithm to perform division by multiplication is described
        fully in "Division of Invariant Integers by Multiplication",
        Granlund and Montgomery.

    Implementation:

    Example:
  
      None.

***************************************************************************
#endif

#if !defined(__NO_LIBRARY_ATTRIBUTES__)

#pragma file_attr("libGroup=libc")
#pragma file_attr("libFunc=divmult_s16")
#pragma file_attr("libFunc=___divmult_s16")
#pragma file_attr("libName=libc")
#pragma file_attr("prefersMem=internal")
#pragma file_attr("prefersMemNum=30")

#endif

#include <stdint.h>

typedef struct __divmult_s16_s {
  int16_t multiplier;
  int16_t shift_amount;
} __divmult_s16_t;

#if defined(__ADSP21000__)
#pragma regs_clobbered "ALLScratch,LoopDepth0"
#elif defined(__ADSPBLACKFIN__)
#pragma regs_clobbered "R0-R3,P0-P2,LC0,LT0,LB0,CCset"
#endif
#ifdef __SYSCALL_INFO__
%syscall
%notes "Returns the multiplier and shift amount required to divide a " \
       "short integer by multiplication"
#endif
#pragma const
#pragma linkage_name ___divmult_s16
__divmult_s16_t divmult_s16(int16_t _denom);

__divmult_s16_t
divmult_s16(int16_t _denom)
{
    const int16_t denom = _denom;

    /* the result structure */
    __divmult_s16_t result;

    /* the absolute value of the denominator */
    uint16_t abs_denom;

    /* data used to compute the log of the denominator */
    /*                        0   1   2   3   4   5   6   7   8 */
    static int16_t lgt[] = { -1,  0,  1,  1,  2,  2,  2,  2,  3 };

    /* the log of the absolute value of the denominator */
    int16_t l = 0;

    /* the multiplier */
    uint32_t m;

    /* compute the absolute value of the denominator */
    abs_denom = (uint16_t)denom;
    if (denom < 0) {
        abs_denom = 0U - abs_denom;
    }

    if (abs_denom < 3U) {

        /* if log is less than zero, use 1 */
        l = 1;

    } else {

        /* compute the ceil of the log of the denominator. Do this by dividing
        ** by 2^3 until we have a value whose log can be read from the table.
        */

        /* temporary value used in computing the log of the denominator */
        uint16_t tmp = abs_denom - 1U;

        while (tmp >= (sizeof(lgt) / sizeof(*lgt))) {
            l += 3;
            tmp >>= 3U;
        }
        l += lgt[tmp];
        l += 1;

    }

    /* multiplier is 1 + floor(2^(N+l-1)/abs(denom)) */
    m = (uint32_t)1U << (15 + l);
    m = m / (uint32_t)abs_denom;
    m += 1U;

    /* return the structure containing multiplier and shift amount */
    result.multiplier = (int16_t)m;
    result.shift_amount = l - 1;
    return result;
}
