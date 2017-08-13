# GUIs

This GUI is built-in to git. I don't really like it very much.

```sh
gitk
```

This GUI is also built-in to git. It's much nicer than `gitk`.

```sh
git gui
```

Tig is an ncurses version of `git gui`. It is not built-in to git.

```sh
tig
```

Git also has a built-in webserver to browse a repo and its commits. It's nowhere near as nice as github, though.

Start it in the current repo (and it'll automatically open up the page in a browser):

```sh
git instaweb
```

Stop the webserver when you're done:

```sh
git instaweb stop
```



