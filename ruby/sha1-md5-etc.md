# Generating SHA1's, MD5's, etc

These examples will be using SHA1's (not recommended for security), but you can also use the following instead:

- `Digest::SHA256`
- `Digest::SHA384`
- `Digest::SHA512`
- `Digest::MD5`     (abandonned, not recommended for security)
- `Digest::HMAC`    (?)
- `Digest::RMD160`  (RIPEMD-160)

And even more algorithms are supported with `OpenSSL::Digest`.

Additionally, you could use .bubblebabble instead of .hexdigest for a different representation of the same hash.


Generate SHA1 hash from a string:
---------------------------------

```ruby
require 'digest/sha1'
Digest::SHA1.hexdigest 'foo'
```


Generate SHA1 hash from a file:
-------------------------------

```ruby
require 'digest/sha1'
Digest::SHA1.hexdigest File.read('path/to/file.txt')
```

OR:

```ruby
require 'digest/sha1'
Digest::SHA1.file("X11R6.8.2-src.tar.bz2").hexdigest
```

