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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002320704264_1621107508_init();
    work_m_00000000003584965234_3037777339_init();
    work_m_00000000000667100592_2725559894_init();
    work_m_00000000001798077285_1814656427_init();
    work_m_00000000000444904786_0503873392_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000444904786_0503873392");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
