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
ExecStep $xv_path/bin/xsim my_ckt_f3_concat_behav -key {Behavioral:sim_1:Functional:my_ckt_f3_concat} -tclbatch my_ckt_f3_concat.tcl -log simulate.log
