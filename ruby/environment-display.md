# Display environment variables

```ruby
puts "ENV ="
puts "{"
i=0
ENV.each do |x,y|
  i = i+1
  printf "  \"#{x}\"=>\"#{y}\""
  if i==ENV.size
    printf "\n"
  else
    printf ",\n"
  end
end
puts "}"
```

