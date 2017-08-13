# rbenv


[Rbenv](https://github.com/rbenv/rbenv) lets us switch between multiple versions of Ruby. It integrates with `ruby-build` to make adding Ruby versions very easy. Using these programs, we’ll be able to use the specific Ruby versions that we want to use for each app we make.

See currently-active ruby version:

```sh
rbenv version
```

See all installed ruby versions rbenv can use:

```sh
rbenv versions
```

Set the default system ruby version to use (replacing `VERSIONTOUSE` with a specific version, like `1.8.7-p352`):

```sh
rbenv global VERSIONTOUSE
```

Temporarily set the version of Ruby used in a single shell session:

```sh
rbenv shell VERSIONTOUSE
```

Set the version of Ruby within a specific project directory:

```sh
rbenv local VERSIONTOUSE
```

Rebuild shim binaries - do after every ruby install, or gem that provides a binary:

```sh
rbenv rehash
```

Lists all Ruby versions with the given command installed:

```sh
rbenv whence COMMANDNAME
```

See available ruby versions via ruby-build:

```sh
rbenv install -l
```

Install a ruby version into rbenv via ruby-build (replacing `VERSIONTOINSTALL` with a specific version, like `1.9.2`):

```sh
rbenv install VERSIONTOINSTALL
```

