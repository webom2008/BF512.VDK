/******************************************************************************

  Copyright (C), 2005-2014, CVTE.

 ******************************************************************************
  File Name     : udprintf.h
  Version       : Initial Draft
  Author        : qiuweibo
  Created       : 2015/6/27
  Last Modified :
  Description   : udprintf.c header file
  Function List :
  History       :
  1.Date        : 2015/6/27
    Author      : qiuweibo
    Modification: Created file

******************************************************************************/

#ifndef __UDPRINTF_H__
#define __UDPRINTF_H__


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

#ifdef _UDPRINTF_C_
#define UDPRINTF_EXT
#else
#define UDPRINTF_EXT    extern
#endif

UDPRINTF_EXT int udprintf_init(void);


#if defined(CONFIG_STDIO_USED) && defined(CONFIG_USER_PRINTF)
#error info: only one of CONFIG_STDIO_USED and CONFIG_USER_PRINTF can define
#endif

#ifdef CONFIG_STDIO_USED
#define udprintf(fmt, arg...)           fprintf(stdout, fmt, ##arg)
#endif
#ifdef CONFIG_USER_PRINTF
UDPRINTF_EXT int udprintf(const char* fmt, ...);
#endif

#ifdef _MODULE_INFO_
#define INFO(fmt, arg...) udprintf(fmt, ##arg)
#else
#define INFO(fmt, arg...)
#endif

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */


#endif /* __UDPRINTF_H__ */
