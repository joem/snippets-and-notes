# Variables


- Variables are case sensitive.
- No space after variable name, unless you want the space in the name.
- No space after equals sign, unless you want the space in variable' string.
- No quotes around the string, unless you want the quotes in the string.


Setting:

```batch
set variablename=whatever string you want
```


Variable expansion:
(For instance, you'd use that in an echo statement, or in part of a path name.)

```batch
%variablename%
```


Check if a variable is defined:

```batch
IF DEFINED MyVar (ECHO MyVar IS defined) ELSE (ECHO MyVar is NOT defined)
```

