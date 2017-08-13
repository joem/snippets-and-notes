# Simple simple class example


```ruby
class ExampleObject
  attr_accessor :attribute1, :attribute2
  def initialize
    @attribute1 = 42 #give it a default value
  end
end
```

Note: You need to use `@` before the variable names when referencing them inside the class.

Note: Although `initialize` is a special method that's called when you instantiate a new object, it is added the same way as any method in a class is.

## Example usage of this class:

```ruby
test1 = ExampleObject.new
puts test1.attribute1  #=> nil
puts test1.attribute2  #=> 42
test1.attribute1 = 35
puts test1.attribute1  #=> 35
puts test1.attribute2  #=> 42
```


