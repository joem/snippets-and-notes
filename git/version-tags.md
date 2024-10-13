# Version Tags

For version tags, I try to follow semver... using a `major.minor.patch` scheme preceded with a `v` where the terms are defined as:
- `major` = really huge changes (like switching from pdf to html, or switching the backend)
- `minor` = significant changes to current version ()
- `patch` = small changes (like changing a few words no one probably reads anyway)

For info about how to do tags in git, see [https://git-scm.com/book/en/v2/Git-Basics-Tagging](https://git-scm.com/book/en/v2/Git-Basics-Tagging)

My technique is to update everything with the new tag (readme, changelog, version on form) with the new version tag and any associated info, commit it all, push it, _then_ add the new tag to git and push the tag. I use annotated tags, like so:
```
git tag -a v2.1.2 -m "my version 2.1.2"
```

Remember, tags don't get pushed automatically. You can push a specific tag with:
```
git push origin v2.1.2
```
(or whatever tag you want to push)

Or you can push all tags with:
```
git push origin --tags
```

