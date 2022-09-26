# Module methods

There are multiple ways to declare methods in modules.


```ruby
module TestModule

  def meth1
    puts "meth1 success"
  end
  module_function :meth1

end
```

Using the `module_method` function like with `meth1` above, you'll be able to `include` the module in some other code, then call the method without having to prepend the module name.

---

```ruby
module TestModule

  def self.meth2
    puts "meth2 success"
  end

end
```

Using a `self.` declaration like with `meth2` above, even if you `include` the module in other code, you'll still need to call the method by prepending the module name.

---

```ruby
module TestModule

  def self.t1
    meth1
  end

def self.t2
    meth2
  end

end
```

Both declaration types will allow you to call the method inside the module without prepending the module name, as seen in `t1` and `t2` above.

---

```ruby
module TestModule

  def meth3
    puts "you'll never be able to use meth3"
  end

end
```

Note: When declaring a module method, you must use either the `module_method` way or the `self.` way. If you do not do either (like with `meth3` above), you're actually declaring an _instance method_ but you can never declare a new instance of a module, so you'll never be able to call that method.

