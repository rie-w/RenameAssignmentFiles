@echo off
setlocal enabledelayedexpansion

set EXTENTION=""
set NEW_FILE_NAME=""

IF exist ReadMe.csv (
  FOR /F "tokens=1-3 delims=," %%i in (ReadMe.csv) do (
    FOR /F "tokens=1-3 delims=." %%A in ("%%k") do set EXTENTION=%%B
    IF exist %%k (
      set NEW_FILE_NAME=%%j.!EXTENTION!
      ren %%k !NEW_FILE_NAME!
    )
  )
) else (
  echo "Please put this file on assignment folder"
)
pause
