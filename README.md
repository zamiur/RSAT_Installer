# RSAT_Installer
Usage
----
To use RSAT Installer (Abbreviated Remote Server Administartive Tools Installer) you can execute the compiled .exe and then install your selected .msu package, It will create a folder in your desktop called RSAT_Install. In this directory the selected .msu (Windows Update Package) will be moved to / (The root directory of RSAT_Install). The process will then expand the package by using this command

expand -F:* Windows6.2-KB2693643-x86.msu C:\Users\%user%\Desktop\RSAT_Install\ExtractedFiles\Windows8\x86

NOTE: %user% is basically your Windows Username.

The directory  \ExtractedFiles is where the expanded MSU package contents will be dumped by the command expand (Microsoft (R) File Expansion Utility), the package Windows6.2-KB2693643-x86 is the one being expanded and the other diretory \ExtractedFiles\Windows8\x86 has 2 folders then another 2 folders divided by architecture (x86 and x64). Once that command has been excecuted, it will install the package with this command

pkgmgr /n:Windows6.2-KB2693643-x86.XML

The porgram pkgmgr will install the package from reading the XML \ExtractedFiles\Windows8\x86.
NOTE: If it says that PkgMgr.exe has been deprecated visit http://go.microsoft.com/fwlink/?LinkID=195329 for more help



