# A quick nokogiri example


```ruby
require 'nokogiri'
doc = Nokogiri::HTML(the_html_text)
my_results = doc.css('html body table tr td')[1].css('table tr td img').attr('src')
```

See the nokogiri docs for how to open a file or a url

-----------------

This example shows how to select by css...

```
.css('html body table tr td')
```

...choose a sibling...

```
[1]
```

...continue selecting...

```
.css('table tr td img')
```

...then take an attribute of the result...

```
.attr('src')
```



