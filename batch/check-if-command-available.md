# Check if a command is available


```batch
FOR %%x IN (my_command.exe) DO IF NOT [%%~$PATH:x]==[] SET MyCommandFound=1
```

