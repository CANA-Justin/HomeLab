<#
.NOTES
  URL http://blogs.catapultsystems.com/jsandys/archive/2012/08/06/configmgr-folder-structure/
#>

<blockquote><p>@echo off

pushd %~dp0

echo Creating top-level Directory

md ConfigMgr

cd ConfigMgr

net share ConfigMgr=%cd% /GRANT:Everyone,FULL

echo Creating Sub-directories

md Content
md Content\Software
md Content\Updates
md Content\Drivers
md Content\App-V
md Content\OSD
md Content\OSD\BootImages
md Content\OSD\OSImages
md Content\OSD\OSInstall
md Content\OSD\MDTToolkit
md Content\OSD\MDTSettings
md Content\OSD\Drivers
md Content\OSD\MDTSettings\Deploy
md InstallationUpdates
md BootImageFiles
md Captures
md Hotfixes
md Scripts
md StateCapture
md Tools
md Tools\PSTools
md Stuff
md MDTLogs
md Import
md Import\Drivers
<br>md Import\MOFs
md Import\Baselines

echo Setting permissions

icacls Captures /grant %USERDOMAIN%\_cmnaa:(OI)(CI)F
icacls MDTLogs /grant %USERDOMAIN%\_cmnaa:(OI)(CI)F
icacls StateCapture /grant LocalService:(OI)(CI)F</p></blockquote><p>popd</p>
