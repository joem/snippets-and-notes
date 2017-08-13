# Easily make an object respond to common array methods

Using Forwardable, it's very easy to pick and choose what methods you want to forward to a part of your class. And by include-ing Enumerable, you get additional methods like #min and #map.

```ruby
require 'forwardable'

class MyClass
  include Enumerable
  extend Forwardable
  # Pick and choose which methods get forwarded straight to @storage_array
  def_delegators :@storage_array, :each, :<<, :[], :size

  def initialize
    @storage_array = []
  end

end
```

Now you can use an instance of MyClass as if it were an array. For example:

```ruby
my_instance = MyClass.new

my_instance << 1
my_instance << 2
my_instance << 3
my_instance << 4
my_instance.size   #=> 4
my_instance[2]     #=> 3
my_instance.each do { |i| puts i * 2 }
```

(Alternatively, you could define all the methods you want and just pass them all to the array, but for anything past one or two methods, it's easier to do it this way.)

