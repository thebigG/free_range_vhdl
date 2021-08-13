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
ExecStep $xv_path/bin/xsim my_4t1_mux_behav -key {Behavioral:sim_1:Functional:my_4t1_mux} -tclbatch my_4t1_mux.tcl -log simulate.log
