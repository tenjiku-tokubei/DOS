setlocal enabledelayedexpansion

if not exist "c:\work" ( mkdir "c:\work" ) pushd c:\work

type nul > uuidgen_stdout.txt

for /l %%i in (1,1,%1) do (
  @powershell "[System.GUID]::NewGuid().ToString()" >> uuidgen_stdout.txt
)

start .\uuidgen_stdout.txt

popd

endlocal

rem exit
