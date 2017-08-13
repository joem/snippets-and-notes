# Convert from CSV to TSV

```ruby
require 'csv'

CSV.open('input.csv', 'r', ',') do |row|
  print row.join("\t")
  print "\n"
end
```

A quick and basic way to convert CSV to TSV. Using this method, you'd need to redirect stdout to a file in order to save the output.

