# git

## Trunk-based development

Alternative git workflow to collaborate on a single trunk / branch.
Easy to use and scale. 

See [trunkbaseddevelopment.com](https://trunkbaseddevelopment.com/).

## Mark files as executable on Windows

`git update-index --chmod=+x 'path/to/script.sh'`

## Remove local branches which do not exists on the remote

```bash
$ ./remove-local-branches.sh --dry-run
$ ./remove-local-branches.sh --remove
```

### Debbuging with bisect

`git bisect` allows you to perform a binary search on your git tree.
bisect can be a very powerful tool for detecting a bug in a specific commit. You define a start and an end commit. At first the middle will be checked out. If the bug was not reproducable in that commit git will checkout a commit in the middle of the upper half.
This method allows to find bugs in a very few simple steps.
You can find the documentation [here](https://git-scm.com/docs/git-bisect).

**But** if bisect should work properly a good git history is necessary. 

 - Every commit should compile
 - Commits should be useful, avoid creating hundreds of commits. Take a look at [squashing commits](https://stackoverflow.com/questions/5189560/squash-my-last-x-commits-together-using-git).
