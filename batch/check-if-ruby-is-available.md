# Check if ruby is available


A simple batch file template that checks if Ruby is available before running a command that presumably needs ruby:

```batch
@ECHO OFF

REM First, test for Ruby and don't run if not installed.
SET RubyCommandFound=
FOR %%x IN (ruby.exe) DO IF NOT [%%~$PATH:x]==[] SET RubyCommandFound=1
IF NOT DEFINED RubyCommandFound CALL :ERRORNORUBY

REM ********
REM Insert main program here.
REM ********
goto :EOF

:ERRORNORUBY
REM Unset the RubyCommandFound variable, just in case.
SET RubyCommandFound=
ECHO.
ECHO No Ruby installation found, so this program can't run.
ECHO.
goto :EOF
```

