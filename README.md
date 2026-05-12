# dotfiles
Symlink `git_rails` to `/usr/local/bin/git_rails`:

```bash
sudo ln -sf ~/dotfiles/git_rails /usr/local/bin/git_rails
```

Put the hooks in `~/.git_template/hooks`

cd into the git repo you want to add it to and run `cp -r ~/.git_template/hooks/ ./.git/hooks/`

Now it will auto run migrations and bundle for you when you change branches!

## Debugging

If you get an error like `.git/hooks/post-checkout: line 7: /usr/local/bin/git_rails: Permission denied`, make sure `git_rails` has execute permissions:

```bash
chmod +x ~/dotfiles/git_rails
```
