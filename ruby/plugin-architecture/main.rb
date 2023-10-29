# frozen_string_literal: true

require_relative 'lib/my_lib'

# A helper function that also shows how to access the list of plugins
def display_plugins
  puts '  Displaying reader plugins:'
  print '    ' # indenting the list
  p MyLib::ReaderPlugin.descendants

  puts '  Displaying writer plugins:'
  print '    ' # indenting the list
  p MyLib::WriterPlugin.descendants
end

puts 'my_lib is now loaded'

display_plugins

puts 'Requiring custom plugins...'

# TODO

puts 'Running a plugin...'

# How to access a plugin based on a string of the name
# reader_option = 'CsvReaderPlugin'
reader_option = 'TxtReaderPlugin'
# This seems to work OK:
reader_class = MyLib.const_get(reader_option)
# So does this:
# reader_class = Object.const_get("MyLib::#{reader_option}")
# But this is what a stackoverflow answer from 2011 said to do:
# reader_class = "MyLib::#{reader_option}".split('::').inject(Object) {|o,c| o.const_get c}
# Maybe const_get has changed since that answer was written?

reader = reader_class.new
reader.run
