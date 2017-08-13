# Function with a variable number of arguments

To make a function take a variable number of arguments, use:

```vim
funtion Functionname(...)
```

or:

```
function Functionname(foo, bar, ...)
```

When you do that:

  - `a:0` holds the number of variables the function is called with in a particular instance
  - `a:foo` holds foo, if that was declared
  - `a:bar` holds bar, if that was declared
  - `a:1`...`a:n` are the arguments
  - `a:000` is a list of all the arguments


