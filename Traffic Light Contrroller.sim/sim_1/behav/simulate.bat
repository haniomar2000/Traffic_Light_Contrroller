@echo off
set xv_path=D:\\Vivado\\2016.1\\bin
call %xv_path%/xsim Traffic_Light_Controller_behav -key {Behavioral:sim_1:Functional:Traffic_Light_Controller} -tclbatch Traffic_Light_Controller.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
