@echo off
setlocal enabledelayedexpansion

set EXTENTION=""
set _FILE_NAME=""
set FILE_NAME=""
set CLASS=""
set DAY_NUM=""
set NEW_FILE_NAME=""

IF exist ReadMe.csv (
  FOR /F "tokens=1-3 delims=," %%i in (ReadMe.csv) do (
    FOR /F "tokens=1-3 delims=." %%A in ("%%k") do (

      set EXTENTION=%%B
      set _FILE_NAME=%%A

      FOR /F "tokens=1-3 delims=_" %%a in ("%%A") do (
          set  CLASS=%%a
          set  DAY_NUM=%%b
      )
      
      IF exist %%k (
       set NEW_FILE_NAME=!CLASS!_!DAY_NUM!_%%j.!EXTENTION!
        ren %%k !NEW_FILE_NAME!
      )

    )
  )
) else (
  echo "Please put this file on assignment folder"
)
pause
