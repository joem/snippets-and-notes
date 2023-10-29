# frozen_string_literal: true

module MyLib
  # What this does
  class TxtReaderPlugin < ReaderPlugin
    def run
      puts 'TxtReaderPlugin has been run!'
    end
  end
end
