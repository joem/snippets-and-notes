# Functions


Functions are essentially using jump points to pretend you're calling an external program. Be sure to include a `GOTO :EOF` at end of function to close it.

Call a function:

```
CALL :FUNCTIONNAME
```

Call a function with an argument:

```
CALL :FUNCTIONNAME argument
```

Reference an argument from within a function:
Use % just like you would for a commandline argument to a batch file.


