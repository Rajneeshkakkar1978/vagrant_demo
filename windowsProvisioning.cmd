echo *****************STARTING WINDOWS VM PREP****************

@powershell -NoProfile -ExecutionPolicy Bypass -File "%systemdrive%\vagrant\installChoco.ps1"

chocolatey feature enable -n=allowGlobalConfirmation
choco install BoxStarter
chocolatey feature disable -n=allowGlobalConfirmation

@powershell -NoProfile -ExecutionPolicy Bypass -Command "Install-BoxStarterPackage -PackageName "%systemdrive%\vagrant\boxstarter.txt"

echo *****************Preparing War****************
cd %systemdrive%\vagrant
jar cvf tutorial.war *

echo *****************Deploying War*****************
REM sudo cp tutorial.war /var/lib/tomcat7/webapps/

echo "*****************WINDOWS VM PREP COMPLETE****************"
