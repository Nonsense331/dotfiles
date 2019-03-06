# dotfiles
Put `git_rails` in `/usr/local/bin/git_rails`

Put the hooks in `~/.git_template/hooks`

cd into the git repo you want to add it to and run `cp -r ~/.git_template/hooks/ ./.git/hooks/`

Now it will auto run migrations and bundle for you when you change branches!
