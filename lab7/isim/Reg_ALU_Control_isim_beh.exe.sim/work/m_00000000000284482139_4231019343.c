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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/User/dev/cecs341/lab7/ALUControl.v";
static unsigned int ng1[] = {32U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {34U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {36U, 0U};
static unsigned int ng6[] = {0U, 0U};
static unsigned int ng7[] = {37U, 0U};
static unsigned int ng8[] = {1U, 0U};
static unsigned int ng9[] = {42U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {15U, 0U};



static void Always_9_0(char *t0)
{
    char t4[8];
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 1444U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(9, ng0);
    t2 = (t0 + 1640);
    *((int *)t2) = 1;
    t3 = (t0 + 1472);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(10, ng0);
    t6 = (t0 + 692U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t6 = (t5 + 4);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 15U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 15U);
    t15 = (t0 + 600U);
    t16 = *((char **)t15);
    xsi_vlogtype_concat(t4, 6, 6, 2U, t16, 2, t5, 4);

LAB5:    t15 = ((char*)((ng1)));
    t17 = xsi_vlog_unsigned_case_compare(t4, 6, t15, 6);
    if (t17 == 1)
        goto LAB6;

LAB7:    t2 = ((char*)((ng3)));
    t17 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t17 == 1)
        goto LAB8;

LAB9:    t2 = ((char*)((ng5)));
    t17 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t17 == 1)
        goto LAB10;

LAB11:    t2 = ((char*)((ng7)));
    t17 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t17 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng9)));
    t17 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t17 == 1)
        goto LAB14;

LAB15:
LAB17:
LAB16:    xsi_set_current_line(16, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB18:    goto LAB2;

LAB6:    xsi_set_current_line(11, ng0);
    t18 = ((char*)((ng2)));
    t19 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t19, t18, 0, 0, 4, 0LL);
    goto LAB18;

LAB8:    xsi_set_current_line(12, ng0);
    t3 = ((char*)((ng4)));
    t6 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 4, 0LL);
    goto LAB18;

LAB10:    xsi_set_current_line(13, ng0);
    t3 = ((char*)((ng6)));
    t6 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 4, 0LL);
    goto LAB18;

LAB12:    xsi_set_current_line(14, ng0);
    t3 = ((char*)((ng8)));
    t6 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 4, 0LL);
    goto LAB18;

LAB14:    xsi_set_current_line(15, ng0);
    t3 = ((char*)((ng10)));
    t6 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 4, 0LL);
    goto LAB18;

}


extern void work_m_00000000000284482139_4231019343_init()
{
	static char *pe[] = {(void *)Always_9_0};
	xsi_register_didat("work_m_00000000000284482139_4231019343", "isim/Reg_ALU_Control_isim_beh.exe.sim/work/m_00000000000284482139_4231019343.didat");
	xsi_register_executes(pe);
}
