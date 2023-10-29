# frozen_string_literal: true

module MyLib
  # What this does
  class PdfWriterPlugin < WriterPlugin
    def run
      puts 'PdfWriterPlugin has been run!'
    end
  end
end
