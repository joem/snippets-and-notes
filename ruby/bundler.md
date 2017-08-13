# Using Bundler


[Bundler](http://bundler.io) tracks and installs gems for a project in a file named Gemfile. It's used to help manage gems for projects, and to help deploy projects.

Installing gems
---------------

Generate a mostly-empty starter Gemfile:

```sh
bundle init
```


Now, to add a gem to your project, you simply add a line to the Gemfile about it (like `gem 'rails'`) and then run some form of `bundle install`. (If the gems have executables, be sure to run 'rbenv rehash' after.)

Install ruby gems from Gemfile, to same location as `gem install` would put them:

```sh
bundle install
```

...or:

```sh
bundle
```

...or, to install gems in local project path (like how Rails does it:

```sh
Bundle install --path=vendor/bundle
```


In order to set Bundler to remember to use the local project path for this project every time you run `bundle install`, set the local config option:

```sh
bundle config --local path vendor/bundle
```

Other things
------------

Execute a command in the context of a bundle:

```sh
bundle exec COMMAND
```

List local gems installed by bundler:

```sh
bundle exec gem list -l
```

