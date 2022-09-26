# Misc Ruby Notes

This file is for little reminders that don't really fit as their own snippet all that well.

---

When assigning a value from a hash, you can set a default by using a `||` followed by the default in the statement. This works because if there is no value in the hash, the hash will return `nil` if the key has no assigned value, even if the key doesn't exist (because then it'll definitely have no assigned value). Example:

```ruby
apo_e = genetics[:apo_e] || "N/A"
```

---


