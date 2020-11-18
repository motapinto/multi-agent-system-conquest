@echo off
setlocal enabledelayedexpansion

rmdir /S /q out
mkdir out
mkdir out\logs

javac src\*.java src\agents\*.java src\data\*.java src\data\message\*.java src\gameServerBehaviours\*.java src\gui\*.java src\gui\components\*.java src\gui\data\*.java src\PlayerBehaviours\*.java src\SharedBehaviours\*.java src\ZoneBehaviours\*.java -classpath ./lib/jade.jar -d out
echo.
echo All classes compiled to \out directory