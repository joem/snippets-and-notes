puts 'LISTING:'

specs = Gem::Specification.find_all do |spec|
  spec.name =~ /^net-/
end

specs.each do |spec|
  print '  '
  puts spec.name
end


puts 'SEARCHING (pop):'

search_term = 'Pop'

specs = Gem::Specification.find_all do |spec|
  spec.name == "net-#{search_term.downcase}"
  # spec.name == "minitest" # This is an example with multiple versions on my system.
end

# In case there are multiple versions, sort the returned array & take last item
spec = specs.sort_by { |spec| spec.version }.last

print '  '
puts spec.name
