# Read a file


_(General note: Use 'chomp' to strip newlines, if necessary.)_


METHOD 1: Read into string, opens and closes automatically for you.

Con: On large files and/or low RAM, this could be slow.

```ruby
mystring = []
mystring = File.read('./test.txt')
```

------------------

METHOD 2: Read into array, opens and closes automatically for you.

Con: On large files and/or low RAM, this could be slow.

```ruby
myarray = []
myarray = File.readlines('./test.txt')
```

------------------

METHOD 3: Read into array, opens and closes automatically for you.

Pro: Will not slow down on large files and/or low RAM.

```ruby
myarray = []
File.foreach('./test.txt') do |line|
  myarray << line # Do something with the line.
end
```



