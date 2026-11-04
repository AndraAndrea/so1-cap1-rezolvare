@echo off
REM Problema 5 - F1.BAT
REM Imbunatatiti F1.BAT, facand verificari de existenta a
REM fisierelor daca MENIU returneaza 2 sau 3.

REM Scrieti solutia mai jos:


md %1
cd %1

:meniu
..\MENIU.EXE

if errorlevel 3 goto optiunea3
if errorlevel 2 goto optiunea2
if errorlevel 1 goto optiunea1
if errorlevel 0 goto final

:optiunea1
copy con %2.TXT
goto meniu

:optiunea2
if not exist %2.TXT echo Fisierul nu exista!
if exist %2.TXT sort %2.TXT /o %2.SRT
goto meniu

:optiunea3
if not exist %2.SRT echo Fisierul nu exista!
if exist %2.SRT type %2.SRT
goto meniu

:final
echo Directorul curent este:
cd
cd ..
pause