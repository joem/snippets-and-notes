# Make sure a path is the right path

```ruby
require 'pathname'
the_real_path = Pathname.new(some_path).realpath
```

