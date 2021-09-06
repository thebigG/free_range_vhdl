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
ExecStep $xv_path/bin/xelab -wto d8f1febbe5f54889b75d62c2611e45f1 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot d_ff_behav xil_defaultlib.d_ff -log elaborate.log
