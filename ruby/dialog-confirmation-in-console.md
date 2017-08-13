# Confirm to proceed

Ask if you want to proceed, and exit if anything other than 'yes' is entered.

```ruby
print "Are you sure you want to proceed? (Type 'yes' if so.): "
input = gets.strip

if input.downcase != 'yes'
  exit 1
end

puts "Proceeding..."
```

