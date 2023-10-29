# frozen_string_literal: true

module MyLib
  # What this does
  class CsvReaderPlugin < ReaderPlugin
    def run
      puts 'CsvReaderPlugin has been run!'
    end
  end
end
