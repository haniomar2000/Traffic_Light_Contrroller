@echo off
set xv_path=D:\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 70c18329136d4aa685ae5a824bf01983 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Traffic_Light_Controller_behav xil_defaultlib.Traffic_Light_Controller xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
