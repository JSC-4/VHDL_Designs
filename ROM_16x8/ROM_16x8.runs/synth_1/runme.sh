#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/programs/Xilinx/SDK/2019.1/bin:/opt/programs/Xilinx/Vivado/2019.1/ids_lite/ISE/bin/lin64:/opt/programs/Xilinx/Vivado/2019.1/bin
else
  PATH=/opt/programs/Xilinx/SDK/2019.1/bin:/opt/programs/Xilinx/Vivado/2019.1/ids_lite/ISE/bin/lin64:/opt/programs/Xilinx/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/opt/programs/Xilinx/Vivado/2019.1/ROM_16x8/ROM_16x8.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log ROM_16x8.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ROM_16x8.tcl
