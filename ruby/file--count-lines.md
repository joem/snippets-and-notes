# Count the lines in a file


```ruby
count = %x{wc -l #{filename}}.split.first.to_i
```

- Speed: The quickest.
- Pro: The quickest.
- Con: Not cross-platform. Might not even work on this comp.

-------------

```ruby
count = IO.readlines(filename).size
```

- Speed: Still fairly quick.
- Pro: Very simple.
- Pro: Closes file automatically.
- Con: Slurps entire file at once. Bad for huge files.

-------------

```ruby
count = File.foreach(filename).inject(0) {|c, line| c+1}
```

- Speed: Still fairly quick.
- Pro: Line by line, no slurping. Can handle any size file.
- Pro: Closes file automatically.
- Con: A little complicated when compressed to one line.


