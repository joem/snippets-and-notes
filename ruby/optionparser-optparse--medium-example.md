# Medium Example Of OptionParser (aka optparse)

This is bit more complex example of OptionParser, but with even more features shown.

```ruby
require 'optparse'

VERSION = '0.1.4'

# Set default options
options = {
  :verbose => false,
  :backup_path => '',
}

OptionParser.new do |opts|
  opts.banner = "Usage: #{File.basename($0)} [options] INPUTFILE"
  opts.separator ""

  # Boolean switch.
  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end

  # Required argument to this option.
  opts.on("-b", "--backup BACKUPPATH", "The dir to backup to") do |b|
    options[:backup_path] = b
  end

  # No argument, shows at tail.  This will print an options summary.
  opts.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
  end

  # Another typical switch to print the version.
  opts.on_tail("--version", "Show version") do
    puts VERSION
    exit
  end

end.parse!
```


You can access the options via the `options` hash. In this case, the relevant keys are: `options[:verbose]` and `options[:backup_path]`




