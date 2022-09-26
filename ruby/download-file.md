# Download file from URL by reading it all into memory all at once

```ruby
require 'open-uri'

open('destination.png', 'wb') do |file|
  file << open('http://example.com/source.png').read
end
```

# Download file from URL without reading it all into memory all at once

```ruby
require 'open-uri'

IO.copy_stream(open('http://example.com/source.png'), 'destination.png')
```



