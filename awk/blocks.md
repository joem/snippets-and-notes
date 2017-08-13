# Blocks

Things in the BEGIN block are run once at beginning of the process.

It's a good place to set the input file separator (FS) and the output file separator (OFS), or to output headers, among other things.

```awk
BEGIN {
}
```

Things in the unnamed block are run once per line in input file.

It's a good place to operate on the input lines.

```awk
{
}
```

Things in the END block are run once at end of the process.

It's a good place to output sums, or to say "done", among other things.

```awk
END {
}
```

