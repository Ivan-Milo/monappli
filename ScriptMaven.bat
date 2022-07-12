call mvn scm:checkout -DconnectionUrl=scm:git:https://github.com/Ivan-Milo/monappli.git -DscmVersionType=branch -DscmVersion=main

pause

cd target/checkout/monappli

call mvn package
