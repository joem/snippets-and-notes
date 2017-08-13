# Regexes in very-magic mode

Start a regex with `\v` to enter very-magic mode, and then you don't need to escape all sorts of things in the regex.

That means...

```vim
/(.*)
```

...will work as expected, and you won't need to type

```vim
/\(.*\)
```


