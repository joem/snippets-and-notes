# How to do config using an object


PROS:

- easy for nested values
- keys are saved as symbols (and can be called as symbols if you want)

CONS:

- requires an external class (although it's small and simple)




```ruby
require 'yaml'
require 'configobject'
config = ConfigObject.new(YAML.load_file("sample_config.yml"))

# Calling values:
puts "Your super-secret password is #{config.ftp_password}"
puts "Your filename is #{config.servers.bar.file}"
```

Since a ConfigObject is just an object and maps keys and values smartly, you can call a value with either dot syntax or bracket syntax. That means that `config.ftp_password` is the same as `config[:ftp_password]`, and dditionally, `config[:ftp_password]` is the same as `config["ftp_password"]`.

Similarly for nested values, the following (and other variations) are all equivalent:

- `config.servers.bar.file`
- `config.servers[:bar][:file]`
- `config[:servers][:bar].file`




External class files
---------------------

`configobject.rb`:

```ruby
class ConfigObject

  def initialize(data={})
    @data = {}
    update!(data)
  end

  def update!(data)
    data.each do |key, value|
      self[key] = value
    end
  end

  def [](key)
    @data[key.to_sym]
  end

  def []=(key, value)
    if value.class == Hash
      @data[key.to_sym] = ConfigObject.new(value)
    else
      @data[key.to_sym] = value
    end
  end

  def method_missing(sym, *args)
    if sym.to_s =~ /(.+)=$/
      self[$1] = args.first
    else
      self[sym]
    end
  end

end
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

