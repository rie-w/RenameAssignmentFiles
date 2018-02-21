@echo off
setlocal enabledelayedexpansion



FOR /F "tokens=1-3 delims=," %%i in (ReadMe.csv) do (
if exist %%k (
ren %%k %%j
)
)
pause
