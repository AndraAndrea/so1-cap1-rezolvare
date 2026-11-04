@echo off
REM Problema 6 - F1.BAT
REM Modificati F1.BAT astfel incat sa nu mai primeasca parametri
REM formali, ci sa isi ia datele din variabilele interpretorului.

REM Scrieti solutia mai jos:


md %S%
cd %S%

:meniu
..\MENIU.EXE

if errorlevel 3 goto optiunea3
if errorlevel 2 goto optiunea2
if errorlevel 1 goto optiunea1
if errorlevel 0 goto final

:optiunea1
copy con %F%.TXT
goto meniu

:optiunea2
if not exist %F%.TXT echo Fisierul nu exista!
if exist %F%.TXT sort %F%.TXT /o %F%.SRT
goto meniu

:optiunea3
if not exist %F%.SRT echo Fisierul nu exista!
if exist %F%.SRT type %F%.SRT
goto meniu

:final
echo Directorul curent este:
cd
cd ..
pause