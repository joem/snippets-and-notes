# Untrack a file without deleting it

A normal `git rm FILENAME` untracks a file and deletes the file, so using this method allows you to keep the file around to do with as you please. You can move the file out of the repo, or delete it, or gitignore it...

```sh
git rm --cached FILENAME
```

