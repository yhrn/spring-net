@echo off
@echo .
@echo ..
@echo ...
@echo Running full Build Script, capturing output to buildlog.txt file...
@echo Start Time: %time%
build-support\tools\nant\bin\nant clean package -f:spring.build -D:test.full=false -D:test.withcoverage=false -D:project.build.sign=false -D:build-ems=false -D:package.version=2.0.0 > buildlog.txt
@echo .
@echo ..
@echo ...
@echo Launching text file viewer to display buildlog.txt contents...
start "ignored but required placeholder window title argument" buildlog.txt
@echo .
@echo ..
@echo ...
@echo ************************
@echo Build Complete!
@echo ************************
@echo End Time: %time%



