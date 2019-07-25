# git

## Mark files as executable on Windows

`git update-index --chmod=+x 'path/to/script.sh'`

## Remove local branches which do not exists on the remote

```bash
$ ./remove-local-branches.sh --dry-run
$ ./remove-local-branches.sh --remove
```