# Return the newest file from a directory


```ruby
puts Dir.glob("test_dir/*").max_by {|f| File.mtime(f)}
```

