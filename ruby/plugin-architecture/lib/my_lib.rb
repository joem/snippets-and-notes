# frozen_string_literal: true

require_relative 'my_lib/plugin'
require_relative 'my_lib/reader_plugin'
require_relative 'my_lib/writer_plugin'

# Built-in reader plugins
require_relative 'my_lib/reader_plugin/csv_reader_plugin'
require_relative 'my_lib/reader_plugin/txt_reader_plugin'
# Built-in writer plugins
require_relative 'my_lib/writer_plugin/pdf_writer_plugin'

# What this does
module MyLib
end
