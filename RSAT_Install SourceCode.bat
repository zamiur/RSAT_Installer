@echo off
title Remote Server Administration Tool Installer
:start
set /p user=Type Windows username:
if %user% == %user% goto continue
:continue
echo Creating install directory...
md C:\Users\%user%\Desktop\RSAT_Install
goto :continue1
:continue1
echo Welcome %user% to RSAT Installer
echo Please type in which package you would like to install
echo Example: Windows[V]KB[NUMBERS]-[AT].msu
echo Example: Windows8.1KB1234567-x86.msu
echo V: Version 
echo NOTE: some
echo NUMBERS: Unique download number/code (Example 1234567)
echo AT: Architecture of PC, Example: x86 and x64
echo.
echo Available downloads
echo RSAT_Windows_8_x64 (Windows6.2-KB2693643-x64.msu)
echo RSAT_Windows_8_x86 (Windows6.2-KB2693643-x86.msu)
echo RSAT_Windows_7_SP1_x64 (Windows6.2-Windows6.1-KB958830-x64-RefreshPkg.msu)
echo RSAT_Windows_7_SP1_x86 (Windows6.2-Windows6.1-KB958830-x86-RefreshPkg.msu)
set /p file=Type the file you would like to intsall (RSAT):
if %file% == Windows6.2-KB2693643-x64.msu goto :RSAT_Windows_8_x64
if %file% == Windows6.2-KB2693643-x86.msu goto :RSAT_Windows_8_x86
if %file% == Windows6.2-Windows6.1-KB958830-x64-RefreshPkg.msu goto :RSAT_Windows_7_SP1_x64
if %file% == Windows6.2-Windows6.1-KB958830-x86-RefreshPkg.msu goto :RSAT_Windows_7_SP1_x86
:RSAT_Windows_7_SP1_x86
echo Downloading file...
start "" https://www.microsoft.com/en-us/download/confirmation.aspx?id=7887&6B49FDFB-8E5B-4B07-BC31-15695C5A2143=1
echo Make sure the file is saved in Downloads
echo If the file has finished downloading press any key to continue
goto :movefile
:RSAT_Windows_7_SP1_x64
echo Downloading file...
start "" https://www.microsoft.com/en-au/download/confirmation.aspx?id=7887&6B49FDFB-8E5B-4B07-BC31-15695C5A2143=1
echo Make sure the file is saved in Downloads
echo If the file has finished downloading press any key to continue
goto :movefile
:RSAT_Windows_8_x86
echo Downloading file...
start "" https://www.microsoft.com/en-us/download/confirmation.aspx?id=28972&6B49FDFB-8E5B-4B07-BC31-15695C5A2143=1
echo Make sure the file is saved in Downloads
echo If the file has finished downloading press any key to continue
goto :movefile
:RSAT_Windows_8_x64
echo Downloading file...
start "" https://www.microsoft.com/en-us/download/confirmation.aspx?id=28972&6B49FDFB-8E5B-4B07-BC31-15695C5A2143=1
echo Make sure the file is saved in Downloads
echo If the file has finished downloading press any key to continue
pause>nul
goto :movefile
:movefile
move C:\Users\%user%\Downloads\*.msu C:\Users\%user%\Desktop\RSAT_Install
echo File transfer complete, press any key to continue
pause>nul
goto :pkgextract
:pkgextract
echo Extracting files
md C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows8\x64
md C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows8\x86
md C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows7\x64
md C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows7\x86
cd C:\Users\%user%\Desktop\RSAT_Install
expand -F:* Windows6.2-KB2693643-x64.msu C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows8\x64
pkgmgr /n:Windows6.2-KB2693643-x64.XML
expand -F:* Windows6.2-KB2693643-x86.msu C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows8\x86
pkgmgr /n:Windows6.2-KB2693643-x86.XML
expand -F:* Windows6.2-Windows6.1-KB958830-x64-RefreshPkg.msu C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows7\x64
pkgmgr /n:Windows6.2-Windows6.1-KB958830-x64-RefreshPkg.XML
expand -F:* Windows6.2-Windows6.1-KB958830-x86-RefreshPkg.msu C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows7\x86
pkgmgr /n:Windows6.2-Windows6.1-KB958830-x86-RefreshPkg.XML
goto complete
:complete
echo Congratulations! You have installed RSAT sucessfully onto your PC
ver
echo You can now exit the program
pause
cls

