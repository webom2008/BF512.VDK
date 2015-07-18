/*****************************************************************************
 *
 * twidfftf_fr16 : $Revision: 3543 $
 *
 * (c) Copyright 2003-2008 Analog Devices, Inc.  All rights reserved.
 *
 *****************************************************************************/

#if defined(__DOCUMENTATION__)

    Function: twidfftf_fr16 - twiddle factor generator

    Synopsis:

        #include <filter.h>
        void twidfftf_fr16 (complex_fract16 twiddle_table[],
                            int             fft_size);

    Description:

        The twidfftf_fr16 function generates complex twiddle factors for the
        fast radix-4 FFT function cfftf_fr16, and returns the coefficients
        in the vector twiddle_table. The coefficients are pairs of sine and
        cosine values that are used by the FFT function to calculate a Fast
        Fourier Transfer. The vector is known as a twiddle table and its size
        must be at least 3*fft_size/4 where fft_size is the number of points
        in the FFT.

        A twiddle table of a given size will contain constant values, and
        so typically such a table would be generated only once during the
        development cycle of an application and would thereafter be preserved
        by the application in some suitable form.

        An application that calculates FFTs of different sizes does not require
        multiple twiddle tables. A single twiddle table can be used to compute
        the FFTs provided that the table is created for the largest FFT that
        the application expects to generate. The FFT function cfftf_fr16 has a
        twiddle stride argument that the application would set to 1 when it is
        generating an FFT with the largest number of data points. To generate
        smaller FFTs, the twiddle stride argument should be set according to
        the formula:

            largest FFT size
            ----------------
            current FFT size

        For example, if an twiddle table had been created for a 1024-point
        FFT, then the same table could also be used to calculate a 256-point
        FFT by setting the twiddle stride argument to 4.

    Error Conditions:

        The twidfftf_fr16 function does not return an error condition.

    Algorithm:

        twiddle_table[k].re =  cos( 2 * PI * k / fft_size )
        twiddle_table[k].im = -sin( 2 * PI * k / fft_size )

            where k = 0, .., ((3*fft_size/4) - 1)

    Implementation:

        Since the FFT size can be assumed to be a power of 4,
        the computation (fract16) 1 / (fft_size / 4) can be performed
        using a shift operation:

            nquart = (fft_size / 4);
            reciprocal =  nquart << ((2 * signbits(nquart)) - 15)

        with the norm instruction returning signbits - 1:

            reciprocal =  nquart << ((2 * signbits(nquart)) - 13)

    Example:

        #include <filter.h>

        #define FFT_SIZE1   256
        #define FFT_SIZE2    64
        #define TWID_SIZE   ((3*FFT_SIZE1)/4)

        #pragma align 1024
        complex_fract16  input1[FFT_SIZE1];
        complex_fract16  output1[FFT_SIZE1];

        #pragma align 256
        complex_fract16  input2[FFT_SIZE2];
        complex_fract16  output2[FFT_SIZE2];

        complex_fract16  twiddles[TWID_SIZE];

        twidfftf_fr16 (twiddles, FFT_SIZE1);

        /* Generate different sized FFTs with the same twiddle table */

        cfftf_fr16 (input1, output1, twiddles,
                    1, FFT_SIZE1);

        cfftf_fr16 (input2, output2, twiddles,
                    (FFT_SIZE1/FFT_SIZE2), FFT_SIZE2);

*****************************************************************************
#endif

#if !defined(__NO_LIBRARY_ATTRIBUTES__)
#pragma file_attr ("libGroup =filter.h")
#pragma file_attr ("libName  =libdsp")
#pragma file_attr ("libFunc  =twidfftf_fr16")
#pragma file_attr ("libFunc  =__twidfftf_fr16")
#pragma file_attr ("prefersMem =external")
#pragma file_attr ("prefersMemNum =70")
   /* (Use prefersMem=external because the function
   **  is usually called no more than once)
   */
#endif

#if !defined(TRACE)
#pragma optimize_for_space
#endif

#ifdef _MISRA_RULES
#pragma diag(suppress:misra_rule_6_3)
/* Suppress Rule 6.3 (advisory) whereby typedefs that indicate
** size and signedness should be used in place of the basic types.
**
** Rationale: The C/C++ manual documents the prototypes of the library
** functions using the intrinsic C data types and these prototypes must
** correspond to the actual prototypes that are defined in the header
** files. In addition, Rule 8.3 requires that the type of the result
** and the type of the parameters that are specified in a function
** definition and a function declaration are identical.
*/
#endif /* _MISRA_RULES */

#include <filter.h>
#include <math.h>

extern void
twidfftf_fr16( complex_fract16 _twiddle_table[],
               int             _fft_size )
{

    /* local copies of the arguments */
    complex_fract16 *const  twiddle_table = _twiddle_table;
    const int               fft_size      = _fft_size;

    int        j, idx_q1, idx_q2, idx_q3;
    const int  nquart = __builtin_shl_i1x32( fft_size, -2 );
    fract16    cos_val, sin_val, val, step;

    short      signbits;  /* number of leading sign bits in nquart */

    /* determine step size between samples (= 1/nquart) */
    signbits   = __builtin_norm_fr1x16( __builtin_extract_lo( nquart ));
    step       = __builtin_shl_fr1x16 ( __builtin_extract_lo( nquart ),
                                       (2 * signbits) - 13 );
    val        = 0;

    /* initialize indices
    ** - first element in 1. quadrant
    ** - last element in 2. quadrant
    ** - first element in 3. quadrant
    */
    idx_q1 = 0;
    idx_q2 = __builtin_shl_i1x32( fft_size, -1 );
    idx_q3 = idx_q2;

    /* 1. quadrant
    ** Compute cosine and -sine values for the range [0..PI/2)
    ** 2. quadrant and 3. quadrant
    ** Exploit symmetry of sine and cosine function.
    */
    twiddle_table[idx_q1].re = (fract16) 0x7fff;  /* = cos( 0 )  */
    twiddle_table[idx_q1].im = (fract16) 0x0;     /* = sin( 0 )  */
    twiddle_table[idx_q3].re = (fract16) 0x8000;  /* = cos( PI ) */
    twiddle_table[idx_q3].im = (fract16) 0x0;     /* = sin( PI ) */

#pragma loop_count(8,, 8)
#pragma extra_loop_loads
#pragma vector_for
    for (j = 1; j < nquart; j++)
    {
        idx_q1++;
        idx_q2--;
        idx_q3++;

        val = __builtin_add_fr1x16( val, step );

        cos_val = cos_fr16( val );
        twiddle_table[idx_q1].re =  cos_val;
        twiddle_table[idx_q2].re = -cos_val;
        twiddle_table[idx_q3].re = -cos_val;

        sin_val = sin_fr16( val );
        twiddle_table[idx_q1].im = -sin_val;
        twiddle_table[idx_q2].im = -sin_val;
        twiddle_table[idx_q3].im =  sin_val;
    }

    twiddle_table[nquart].re = (fract16) 0x0;      /* =  cos( PI/2 ) */
    twiddle_table[nquart].im = (fract16) 0x8000;   /* = -sin( PI/2 ) */
}

/* End of File */