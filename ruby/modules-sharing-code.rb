# How to share code from a module in other modules, and let that shared code
# access constants in the new modules:

module SharedMod
  def hello
    "hi there, #{self::NAME}!"
  end
end

module Aaa
  extend SharedMod
  NAME = 'Sally'
end

module Bbb
  extend SharedMod
  NAME = 'Joe-Joe'
end

puts Aaa.hello #=> "hi there, Sally!"
puts Bbb.hello #=> "hi there, Joe-Joe!"
