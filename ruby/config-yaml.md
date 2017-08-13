# How to do config using only YAML


PROS:

- good for a quick implementation
- needs no other classes (except the yaml stuff, of course)

CONS:

- slightly bulky syntax for flat values
- even bulkier syntax for nested values
- doesn't use symbols for the keys


```ruby
require 'yaml'
CONFIG = YAML.load_file("sample_flat.yml") unless defined? CONFIG

# Calling values:
puts "Your super-secret password is #{CONFIG['ftp_password']}"
puts "Your filename is #{CONFIG['servers']['foo']['file']}"
```



Example YAML config file
------------------------

`sample_config.yml`:

```yaml
---
ftp_username: MYUSERNAME
ftp_password: MYPASSWORD
servers:
  foo:
    address: "0.0.0.0"
    file: alpha.txt
  bar:
    address: "127.0.0.1"
    file: beta.txt
```


