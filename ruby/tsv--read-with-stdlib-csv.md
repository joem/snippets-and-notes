# Read a TSV file with the CSV library

```ruby
require 'csv'

csv_args = {
  :headers => true,
  :col_sep => "\t",
  :skip_blanks => false
}

CSV.foreach('input.tsv', csv_args) do |row|
  # Do something with "row"
  # For instance, if your file has a "name" header, you could reference that
  # field with:
  puts row[:name]
end
```

This example shows a real quick way to access a TSV using Ruby's built-in CSV library. The key thing that separates this from a standard CSV reading is the `:col_sep => "\t"` portion, which sets the column separator to tabs instead of commas.

(The `:headers` and `:skip_blanks` options are not necessary, however I use them ALL THE TIME, so I've left them here.)

