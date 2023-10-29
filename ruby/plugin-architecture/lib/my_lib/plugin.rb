# frozen_string_literal: true

# # Is this require necessary?? Is it good or bad practice??
# require_relative '../my_lib'

module MyLib
  # This is the class that all plugins types must inherit
  class Plugin
    def self.inherited(klass)
      super # Not sure I know why this needs a `super` call but Rubocop says so
      @descendants ||= []
      @descendants << klass
    end

    def self.descendants
      @descendants || []
    end

    # # Plugins must define run (or whatever) in their own class.
    # def run; end
  end
end
