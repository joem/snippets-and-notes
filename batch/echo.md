# Echo


Output a blank line (Note the period afterwards):

```batch
ECHO.
```


Output a variable that might be blank (Note the period):

```batch
ECHO.%MyVar%
```



Redirect a command's stdout to stderr:

```batch
echo Hello 1>&2
```


Redirect stdout to stderr for a group of commands:

```batch
(
  echo.
  echo Your commit has been blocked because you didn't enter a log message.
  echo Please commit again with a log message.
) 1>&2
```

