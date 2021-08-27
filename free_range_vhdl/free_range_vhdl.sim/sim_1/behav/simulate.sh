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
ExecStep $xv_path/bin/xsim mux_8t1_behav -key {Behavioral:sim_1:Functional:mux_8t1} -tclbatch mux_8t1.tcl -log simulate.log
