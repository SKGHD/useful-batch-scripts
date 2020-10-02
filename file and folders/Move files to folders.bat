@echo off 
setlocal enabledelayedexpansion
:: Insert path below
pushd "E:\Media\Movies\Animation"
for %%a in (*) do (
  set fldr=%%~na
  set fldr=!fldr!
  md "!fldr!"
  move "%%a" "!fldr!"
)
popd
pause
exit