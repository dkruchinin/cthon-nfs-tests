@echo off
rem @(#)build.bat	1.1	98/10/26 Connectathon Testsuite

echo Cthon Test Suite NMAKE Build Script for Microsoft Visual C++ 2.0

rem This batch file is used to build the SPECIAL components of the
rem Connectathon testsuite. Each file is compiled and the output of
rem the compile saved in a .log file. Please review the readme.txt for 
rem particular issues in building for the Dos/Windows environment.

rem The Cthon Test Suite for Windows can also be build with Microsoft 
rem Visual C++ 2.0 Workbench. This is different than the C++ 1.5 case
rem when building for DOS. However, this script was created to run
rem NMAKE with the makefiles instead, as it is faster in batch mode.
rem This requires that the PATH, LIB and INCLUDE environment
rem variables be set up correctly, or their location passed as 
rem parameter %1 to this script.

set LIB=%LIB%;%1\LIB
set INCLUDE=%INCLUDE%;%1\INCLUDE
set PATH=%PATH%;%1\BIN

COPY ..\..\BASIC\CONSOLE\SUBR.OBJ .

NMAKE DUPREQ.MAK > DUPREQ.LOG
NMAKE EXCLTEST.mak > EXCLTEST.LOG
NMAKE FSTAT.mak > FSTAT.LOG
NMAKE HOLEY.mak > HOLEY.LOG
NMAKE NEGSEEK.mak > NEGSEEK.LOG
NMAKE NFSIDEM.mak > NFSIDEM.LOG
NMAKE NSTAT.mak > NSTAT.LOG
NMAKE RENAME.mak > RENAME.LOG
NMAKE REWIND.mak > REWIND.LOG
NMAKE STAT.mak > STAT.LOG
NMAKE STAT2.mak > STAT2.LOG
NMAKE TOUCHN.mak > TOUCHN.LOG
NMAKE TRUNCATE.mak > TRUNCATE.LOG
NMAKE OP_REN.mak > OP_REN.LOG
NMAKE OP_UNLK.mak > OP_UNLK.LOG
NMAKE OP_CHMOD.mak > OP_CHMOD.LOG

