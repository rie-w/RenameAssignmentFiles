@echo off
setlocal enabledelayedexpansion

set �g���q=""
set �V�����t�@�C����=""

IF exist ReadMe.csv (
  FOR /F "tokens=1-3 delims=," %%i in (ReadMe.csv) do (
    FOR /F "tokens=1-3 delims=." %%A in ("%%k") do set �g���q=%%B
    IF exist %%k (
      set �V�����t�@�C����=%%j.!�g���q!
      ren %%k !�V�����t�@�C����!
    )
  )
) else (
  echo ���̃t�@�C�����A�A�T�C�������g��zip���𓀂����t�H���_�ɂ����Ď��s����ƁA�t�@�C�������ύX����܂��B
)
pause
