# Hash sorting


General notes:

- sort_by comes from Enumerable, not Hash
- Returns Array of Arrays

----------------

Sort hash by key:

```ruby
some_hash.sort_by { |key, val| key }
```

----------------

Sort hash by value:

```ruby
some_hash.sort_by { |key, val| val }
```

----------------

Sort hash by value within value (if main val is hash):

```ruby
some_hash.sort_by { |key, val| val[:internal_val] }
```





