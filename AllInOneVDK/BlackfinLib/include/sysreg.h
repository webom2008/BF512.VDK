/*
**
** sysreg.h
**
** generated by compiler version "8.1.10.4"
**
** Copyright (c) 1997-2011 Analog Devices, Inc.
**
*/

#ifdef __VERSIONNUM__
#if __VERSIONNUM__ != 0x08010a04
#error The compiler version does not match the version of the sysreg.h include
#endif
#endif

#pragma once
#ifndef __NO_BUILTIN
#pragma system_header /* sysreg.h */
#endif

/* sysreg definitions for use in sysreg_read and sysreg_write calls. */

#ifndef _SYSREG_H
#define _SYSREG_H

#ifdef _MISRA_RULES
#pragma diag(push)
#pragma diag(suppress:misra_rule_2_4)
#pragma diag(suppress:misra_rule_6_3)
#pragma diag(suppress:misra_rule_19_4)
#pragma diag(suppress:misra_rule_19_7)
#pragma diag(suppress:misra_rule_19_10)
#endif /* _MISRA_RULES */


enum {
  /* the following can be used in word-sized sysreg reads and writes */
  reg_I0,
  reg_I1,
  reg_I2,
  reg_I3,
  reg_M0,
  reg_M1,
  reg_M2,
  reg_M3,
  reg_B0,
  reg_B1,
  reg_B2,
  reg_B3,
  reg_L0,
  reg_L1,
  reg_L2,
  reg_L3,
  reg_LC0,
  reg_LC1,
  reg_LT0,
  reg_LT1,
  reg_LB0,
  reg_LB1,
  reg_RETS,
  reg_RETI,
  reg_RETX,
  reg_RETN,
  reg_RETE,
  reg_SEQSTAT,
  reg_SYSCFG,
  reg_CYCLES,
  reg_CYCLES2,
  reg_A0W,
  reg_A0X,
  reg_A1W,
  reg_A1X,
  reg_FP,
  reg_SP,
  reg_P3,
  reg_ASTAT,

  /* the following can be used in double-word sysreg reads and writes */
  reg_A0,
  reg_A1,
  __num_SysRegs
};


#define STACKPOINTER reg_SP
#define FRAMEPOINTER reg_FP

#ifdef _MISRA_RULES
#pragma diag(pop)
#endif /* _MISRA_RULES */

#endif /* _SYSREG_H */
