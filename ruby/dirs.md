# Paths/directories

The directory that the script is called from (aka the cwd):

```ruby
Dir.pwd
```

The directory that the script itself is in:

```ruby
File.expand_path(File.dirname(__FILE__))
```

The directory that the script itself is in, relative to the cwd (NOTE: In most cases, you'll want to use `__dir__` instead!):

```ruby
File.dirname(__FILE__)
```

Return the absolute path of the directory of the file from which this method is called:
```ruby
__dir__
```


