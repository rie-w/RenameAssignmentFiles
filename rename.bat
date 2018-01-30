@echo off
setlocal enabledelayedexpansion

set 拡張子=""
set 新しいファイル名=""

IF exist ReadMe.csv (
  FOR /F "tokens=1-3 delims=," %%i in (ReadMe.csv) do (
    FOR /F "tokens=1-3 delims=." %%A in ("%%k") do set 拡張子=%%B
    IF exist %%k (
      set 新しいファイル名=%%j.!拡張子!
      ren %%k !新しいファイル名!
    )
  )
) else (
  echo このファイルを、アサインメントのzipを解凍したフォルダにおいて実行すると、ファイル名が変更されます。
)
pause
