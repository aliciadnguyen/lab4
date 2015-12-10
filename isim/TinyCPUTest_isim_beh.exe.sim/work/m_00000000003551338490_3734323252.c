/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "m1 %d m2 %d m3 %d m4 %d ";
static const char *ng1 = "C:/Users/Alicia/Documents/CSE140L/Lab4/TinyCPU.v";

void Monitor_55_1(char *);
void Monitor_55_1(char *);


static void Monitor_55_1_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 2808U);
    t2 = *((char **)t1);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t1 = (t0 + 3128U);
    t4 = *((char **)t1);
    t1 = (t0 + 3288U);
    t5 = *((char **)t1);
    xsi_vlogfile_write(1, 0, 3, ng0, 5, t0, (char)118, t2, 8, (char)118, t3, 8, (char)118, t4, 8, (char)118, t5, 8);

LAB1:    return;
}

static void Initial_54_0(char *t0)
{

LAB0:    xsi_set_current_line(54, ng1);

LAB2:    xsi_set_current_line(55, ng1);
    Monitor_55_1(t0);

LAB1:    return;
}

void Monitor_55_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 5944);
    t2 = (t0 + 6456);
    xsi_vlogfile_monitor((void *)Monitor_55_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000003551338490_3734323252_init()
{
	static char *pe[] = {(void *)Initial_54_0,(void *)Monitor_55_1};
	xsi_register_didat("work_m_00000000003551338490_3734323252", "isim/TinyCPUTest_isim_beh.exe.sim/work/m_00000000003551338490_3734323252.didat");
	xsi_register_executes(pe);
}
