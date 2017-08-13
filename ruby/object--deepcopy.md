# Deep copy object a to object b

This deep copies (duplicate an object including all the data inside it) and nothing needed outside of core ruby (not even stdlib):

```ruby
b = Marshal.load( Marshal.dump(a) )
```

Please note this will not work for some complex objects, but should work fine for anything that's just text/number stores, which is most of the classes I ever make.


