echo *****************STARTING WINDOWS VM PREP_2****************

echo *****************Installing BoxStarter****************

choco install -y boxstarter

echo *****************Installing Softwares****************

copy /Y "%systemdrive%\vagrant\software_list.txt" "%temp%\software_list.txt" 

@powershell -NoProfile -ExecutionPolicy Bypass -Command "Import-Module $env:appdata\boxstarter\boxstarter.chocolatey\boxstarter.chocolatey.psd1;Install-BoxStarterPackage -PackageName $env:temp\software_list.txt"

echo *****************Preparing War****************
cd %systemdrive%\vagrant
"C:\Program Files\Java\jdk1.8.0_112\bin\jar.exe" cvf tutorial.war *

echo *****************Deploying War*****************
MOVE tutorial.war "C:\Program Files\Apache Software Foundation\tomcat\apache-tomcat-8.0.33\webapps"

echo "*****************WINDOWS VM PREP_2 COMPLETE****************"
