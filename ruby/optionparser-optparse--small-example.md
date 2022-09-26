# Small Example Of OptionParser (aka optparse)

This is very small example of OptionParser, but with a few features shown and easy to build off of.

```ruby
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: #{$PROGRAM_NAME} [options]"
  
  opts.separator ""
  opts.separator "Specific options:"

  opts.on("-f", "--force", "Force something to happen") do |f|
    options[:force] = f
  end

  # No argument, shows at tail.  This will print an options summary.
  opts.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
  end

end.parse!
```

You can access the options via the `options` hash. In this case, the only relavant key is: `options[:force]`

