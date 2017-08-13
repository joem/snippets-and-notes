# Use isbntools to convert 10-digit ISBN to 13-digit

```ruby
require 'isbn/tools'

ARGF.each do |isbn|
  if isbn.chomp.length == 10
    puts ISBN_Tools.isbn10_to_isbn13(isbn.chomp)
  elsif isbn.chomp.length == 9
    #assume it's missing the last digit
    checkdigit = ISBN_Tools.compute_isbn10_check_digit(isbn.chomp)
    puts ISBN_Tools.isbn10_to_isbn13(isbn.chomp + checkdigit)
  end
end
```

