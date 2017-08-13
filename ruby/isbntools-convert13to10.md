# Use isbntools to convert 13-digit ISBN to 10-digit

```ruby
require 'isbn/tools'

ARGF.each do |isbn|
  if isbn.chomp.length == 13
    puts ISBN_Tools.isbn13_to_isbn10(isbn)
  end
end
```

