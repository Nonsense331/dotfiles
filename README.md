# dotfiles
Put `git_rails` in `/usr/local/bin/git_rails`

Put the hooks in `~/.git_template/hooks`

cd into the git repo you want to add it to and run `cp -r ~/.git_template/hooks/ ./.git/hooks/`

Now it will auto run migrations and bundle for you when you change branches!

## Debugging

If you get an error like `.git/hooks/post-checkout: line 7: /usr/local/bin/git_rails: Permission denied`, make sure your `/usr/local/bin/git_rails` has execute permissions. You can `cd` to the folder and run `chmod +x git_rails`.
