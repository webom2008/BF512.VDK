/****************************************************************************
 *
 * divr_uk40.asm : $Revision: 1.7 $
 *
 * (c) Copyright 2008 Analog Devices, Inc.  All rights reserved.
 *
 ****************************************************************************/

#if defined(__DOCUMENTATION__)
    
   Function: __divr_uk40 - unsigned 40-bit accum division with rounding
    
   Synopsis:
    
      uk40 __divr_uk40(u64 num, u40 den)
  
   Description:

      The __divr_uk40 compiler support function performs an unsigned division
      of its integer operands and returns an unsigned fixed-point result with
      8 integer bits and 32 fractional bits.
      The denominator is limited to 40 bits, i.e. the range from 0 to
      0xFFFFFFFFFF. The result is saturated and rounded to nearest, with
      bias depending on the RND_MOD flag.
      
   Arguments:
   
      A non-standard calling convention is used in that the fourth word is
      expected in R3 instead of [SP + 12].

      R1:0 - numerator
      R3:2 - denominator

   Results:

      R1:0 - quotient

   Clobbered registers:
    
      Refer to syscall information below.
      
   Stack size:
    
      The three unused parameter slots plus three additional slots are used.

   Error Conditions:
    
      If the denominator is zero or out of range, the result of the division
      operation is undefined, although the function is guaranteed to return
      and take no longer than with any valid operands.

   Algorithm & Implementation:
        
      The __divrem_u96_u64 routine is used to perform the actual division,
      whereby the numerator is first shifted left by 32 bits to account for the
      fractional result.
    
********************************* **** * *  **********************************
#endif

#if defined(__SYSCALL_INFO__)
/* System call information */
%regs_clobbered "R0-R3,P0-P2,LC0,LT0,LB0,CCset"
%const
%pass_64bit_operands_in_regs
%notes "Division of 64-bit unsigned integer by 40-bit unsigned accum " \
       "with rounding."
%syscall ___divr_uk40(uK=ulLuK)
#endif

#if !defined(__NO_LIBRARY_ATTRIBUTES__)
.FILE_ATTR libName  = libdsp;
.FILE_ATTR libGroup = integer_support;
.FILE_ATTR libFunc  = ___divr_uk40;
.FILE_ATTR FuncName = ___divr_uk40;
.FILE_ATTR prefersMem = internal;
.FILE_ATTR prefersMemNum = "30";
#endif

.TYPE   ___divr_uk40, STT_FUNC;
.GLOBAL ___divr_uk40;

.EXTERN ___divrem_u96_u64;
.EXTERN ___divr_k40_round;

.SECTION/DOUBLEANY program;

#include <sys/anomaly_macros_rtl.h>

#if !defined(__ADSPLPBLACKFIN__)
  #define AC0 AC
#endif


.ALIGN 2;
___divr_uk40:

#ifdef __WORKAROUND_WB_DCACHE
      SSYNC;
#endif
      [SP + 8] = R7;
#ifdef __ADSPLPBLACKFIN__
      P2 = RETS;
#else
      R7 = RETS;
      P2 = R7;
#endif

      // Save denominator.
      R4 = R2 << 0  ||  [SP] = R4;
      R5 = R3 << 0  ||  [SP + 4] = R5;
      
      R7 = 0;
      
      // Let others do the real work.
      SP += -8;
      CALL.X ___divrem_u96_u64;
      CALL.X ___divr_k40_round;

      // Saturate to UACCUM_MAX.
      R3 = 0xFF;
      R2 = -1;
      CC = R3 < R1 (IU);
      IF CC R1 = R3;
      IF CC R0 = R2;       

      JUMP (P2);

.___divr_uk40.end:
