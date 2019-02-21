@echo off
rem check whether or not the passed path exist, if not, create the path
IF NOT EXIST %~p1 (
    MD %~p1
)

rem write the path and file name passed
echo H,%date:~4,10%,,, > %1
