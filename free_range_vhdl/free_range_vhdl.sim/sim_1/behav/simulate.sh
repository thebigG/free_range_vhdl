#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim my_ex_behav -key {Behavioral:sim_1:Functional:my_ex} -tclbatch my_ex.tcl -log simulate.log
