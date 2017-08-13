# Field separators

Use `FS` to set the input field separator. Use `OFS` to set the output field separator. Ideally, you'd set them in the `BEGIN` block, like so:

```awk
BEGIN {
  #Set input field separator to tab:
  FS = "\t"
  #Set output field separator to tab:
  OFS = "\t"
}
```

