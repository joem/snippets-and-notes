# frozen_string_literal: true

# # Is this require necessary?? Is it good or bad practice??
# require_relative '../my_lib'

module MyLib
  # This is the class that all writer plugins must inherit
  class WriterPlugin < Plugin
    # `self.inherited(klass)` and `self.descendants` come from Plugin

    # # Plugins must define run (or whatever) in their own class.
    # def run; end
  end
end
