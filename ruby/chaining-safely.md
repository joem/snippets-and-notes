Avoid chaining like this...

```ruby
if user.plan.name == 'Standard'
    ...
```

...because if `user` or `plan` is nil, this will raise an error.

You can get around it with `&&` like this...

```ruby
if user && user.plan && user.plan.name == 'Standard'
    ...
```

...but it's messy and repetitive.

Instead, use Ruby's safe navigation operator `&.` to chain safely.

Using that, the code can be like this:

```ruby
if user&.plan&.name == 'Standard'
    ...
```

If `user` is nil and/or `plan` is nil, the expression `user&.plan&.name` is nil.


