# Show the name of the script

Show the name of the script that was run from the command line:

```ruby
$PROGRAM_NAME
```

Note: `$PROGRAM_NAME` is the same thing as `$0`, but I prefer `$PROGRAM_NAME` because it's clearer what it means.

-------------

Show the name of the current script:

```ruby
__FILE__
```

-------------

Run a block of code only if the script was run directly, instead of by being `require`d or loaded from another script:

```ruby
if __FILE__ == $PROGRAM_NAME
  #some code...
end
```

-------------

Show the directory the current file is in:

```ruby
__dir__
```

This is a function (as opposed to the parse-time constant that `__FILE__` is) that returns the same thing as `File.dirname(File.realpath(__FILE__))` but using `__dir__` is much cleaner and clearer.


