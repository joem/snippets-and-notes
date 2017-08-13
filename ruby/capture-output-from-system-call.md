# Capture output from a system() call


The solution? don't use `system()` but use backticks instead!

```ruby
output = `ls`
p output
```

Note: if you want to capure STDERR just put `2>&1` at the end of your command


