# Substitute in a column

Use `$n` to refer to the desired column, replacing `n` with a number.

```awk
{
  #Replace string in the 5th column of each line with SUBSTITUTE:
  $5="SUBSTITUTE";
  print;
}
```

