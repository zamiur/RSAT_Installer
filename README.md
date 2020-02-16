# RSAT_Installer (THIS PROJECT IS NO LONGER MAINTAINED)
About RSAT_Installer
----
RSAT Installer is a Remote Server Administration Tools Installer that allows you to install MSU packages, So far there are only these packages. This source code can also be forked and be changed into a MSU package installer.

RSAT_Windows_8_x64 (Windows6.2-KB2693643-x64.msu)

RSAT_Windows_8_x86 (Windows6.2-KB2693643-x86.msu) 

RSAT_Windows_7_SP1_x64 (Windows6.2-Windows6.1-KB958830-x64-RefreshPkg.msu) 

RSAT_Windows_7_SP1_x86 (Windows6.2-Windows6.1-KB958830-x86-RefreshPkg.msu)

Usage
----
To use RSAT Installer (Abbreviated Remote Server Administartive Tools Installer) you can execute the compiled .exe and then install your selected .msu package, It will create a folder in your desktop called RSAT_Install. In this directory the selected .msu (Windows Update Package) will be moved to / (The root directory of RSAT_Install). The process will then expand the package by using this command

expand -F:* Windows6.2-KB2693643-x86.msu C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows8\x86

NOTE: %user% is basically your Windows Username.

The directory  \ExtractedFiles is where the expanded MSU package contents will be dumped by the command expand (Microsoft (R) File Expansion Utility), the package Windows6.2-KB2693643-x86 is the one being expanded and the other diretory \ExtractedFiles\Windows8\x86 has 2 folders then another 2 folders divided by architecture (x86 and x64). Once that command has been excecuted, it will install the package with this command

pkgmgr /n:Windows6.2-KB2693643-x86.XML

The prorgram pkgmgr will install the package from reading the XML \ExtractedFiles\Windows8\x86.

Changelog
----
v1.0.0 First release!

Errors and fixes
----
NOTE: If it says that PkgMgr.exe has been deprecated visit http://go.microsoft.com/fwlink/?LinkID=195329 for more help
On Windows 10 Build 16299, PkgMgr no longer functions, therefore making code obsolete and requiring to be updated to DISM.






