# Download something from a URL

```ruby
require "open-uri"

open("your-url") {|f|
   File.open("output_filename.jpg","wb") do |file|
     file.puts f.read
   end
}
```
