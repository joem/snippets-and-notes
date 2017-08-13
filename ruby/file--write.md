# Writing a file

Write string to file, handles closing automatically.

```ruby
File.open filename, 'w+' do |f|
  f.puts my_string
end
```

------------------

Write array to file, with each array item on separate line, closes automatically.

```ruby
File.open filename, 'w+' do |f|
  my_array.each do |array_item|
    f.puts array_item
  end
end
```


