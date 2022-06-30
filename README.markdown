the soul of an old machine

```bash
git clone git@github.com:sch/dotfiles.git ~/.dotfiles
caffeinate ~/.dotfiles/bin/restore
```

Items in `symlinks/` are expanded into the home directory. The top-level
directories in `symlinks/` are are just useful aliases for bucketing files
together, but the children are merged as-is using GNU Stow For more info, see
the [Zero docs](https://github.com/zero-sh/zero.sh#directory-structure).
