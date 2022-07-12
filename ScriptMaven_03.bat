

@echo on

SET mypath=C:\Users\orsys\Documents\dev\monappli02
SET userprofil=%systemdrive%%homepath%
SET tomcatpath=%userprofil%\Desktop\apache-tomcat-10.0.22\bin

call mvn scm:checkout  -DconnectionUrl=scm:git:https://github.com/Ivan-Milo/monappli.git -DscmVersionType=branch -DscmVersion=main -DcheckoutDirectory=testMonappli

cd %mypath%\testMonappli\

call mvn clean package

SET src=%userprofil%\Desktop\Master2\Info\testMonappli\CabinetMedecin\CabinetMedecin-presentation\target\CabinetMedecin-presentation.war
SET dest=%userprofil%\Desktop\Master\Info\apache-tomcat-9.0.19\apache-tomcat-9.0.19\webapps\

copy %src% %dest%

call %tomcatpath%\startup.sh

start chrome http://localhost:7000/CabinetMedecin-presentation/
