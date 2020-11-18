@echo off
setlocal enabledelayedexpansion

set argCount=0
for %%x in (%*) do (
   set /A argCount+=1
   set "argVec[!argCount!]=%%~x"
)


if "%argCount%" == "6" (
    java -classpath ./out;./lib/jade.jar Main "%1" "%2" "%3" "%4" "%5" "%6"
) else (
    echo.
    echo Usage:
    echo %0 ^<name_of_zone_file^> ^<name_of_allied_players_file^> ^<name_of_axis_players_file^> ^<number_of_tickets_at_start^> ^<max_time_of_game^> ^<number_of_games^>
    echo ^<number_of_tickets_at_start^> / ^<max_time_of_game^> / ^<number_of_games^> - Positive integer
    echo ^<name_of_zone_file^> - Name of file to use for zone positions, which should be in zones folder
    echo ^<name_of_allied_players_file^> / ^<name_of_axis_players_file^> - Name of file to use for axis and allied players classes, which should be in players folder
    echo.
)