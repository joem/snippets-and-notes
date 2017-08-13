# Detect if a ruby program is running on a Windows system

Taken from: http://stackoverflow.com/questions/4871309/what-is-the-correct-way-to-detect-if-ruby-is-running-on-windows

Method 1: (Preferred)
---------------------

```ruby
require 'rbconfig'
is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
```



Method 2:
---------

Less reliable (it won't work with much older versions, and the environment variable can be modified)

```ruby
is_windows = (ENV['OS'] == 'Windows_NT')
```


