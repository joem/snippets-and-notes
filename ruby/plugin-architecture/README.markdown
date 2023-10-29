This is based on the last part of this stackoverflow answer: https://stackoverflow.com/questions/2393697/look-up-all-descendants-of-a-class-in-ruby/29840037#29840037

Relevant part reproduced here:

```rb
class DarthVader
  def self.inherited(klass)
    @descendants ||= []
    @descendants << klass
  end

  def self.descendants
    @descendants || []
  end
end

class Foo < DarthVader
end

DarthVader.descendants #=> [Foo]
```

Working off of that, I built this test/example. Simply at first, then I made it fully structured.

