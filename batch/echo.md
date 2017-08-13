# Echo


Output a blank line (Note the period afterwards):

```
ECHO.
```


Output a variable that might be blank (Note the period):

```
ECHO.%MyVar%
```



Redirect a command's stdout to stderr:

```
echo Hello 1>&2
```


Redirect stdout to stderr for a group of commands:

```
(
  echo.
  echo Your commit has been blocked because you didn't enter a log message.
  echo Please commit again with a log message.
) 1>&2
```

