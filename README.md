# dotfiles
Symlink `git_rails` to `/usr/local/bin/git_rails`:

```bash
sudo ln -sf ~/dotfiles/git_rails /usr/local/bin/git_rails
```

Put the hooks in `~/.git_template/hooks`

cd into the git repo you want to add it to and run `cp -r ~/.git_template/hooks/ ./.git/hooks/`

Now it will auto run migrations and bundle for you when you change branches!

## realign_structure

Strips cosmetic column-reorder churn from a Rails `db/structure.sql` dump.
Postgres physically appends re-added columns to the end of a table, so when the
branch-switch hook rolls a migration down and back up, the schema dump shows
pure-reorder noise mixed in with legit changes. This restores the canonical
column order per table while leaving genuine changes (new/dropped columns,
altered defaults, the `schema_migrations` list, etc.) untouched.

Symlink it like `git_rails`:

```bash
sudo ln -sf ~/dotfiles/realign_structure /usr/local/bin/realign_structure
```

Run from a repo root after churn appears:

```bash
realign_structure          # apply in place to db/structure.sql
realign_structure -n       # dry run, report which tables would change
realign_structure --check  # exit 1 if reorder churn exists (no changes)
realign_structure -e       # apply, but exit 1 if it changed anything
realign_structure path     # operate on a different dump file
```

### pre-commit hook

`~/.git_template/hooks/pre-commit` runs `realign_structure -e` whenever
`db/structure.sql` is staged. If it finds reorder churn it fixes the file and
**aborts the commit, leaving the fix unstaged** — so you review it, then
`git add db/structure.sql` and commit again. Installed per repo the same way as
the other hooks:

```bash
cp -r ~/.git_template/hooks/ ./.git/hooks/
```

## rebuild_db

`realign_structure` fixes the dump; `rebuild_db` fixes the database. It dumps the
development data, realigns `db/structure.sql`, drops and recreates the database
from it, then restores the data, so the physical column order matches again.
Stop the server and any consoles first.

```bash
sudo ln -sf ~/dotfiles/rebuild_db /usr/local/bin/rebuild_db
rebuild_db   # from the repo root
```

If the restore fails the dump is left at `tmp/rebuild_db.dump`.

## Debugging

If you get an error like `.git/hooks/post-checkout: line 7: /usr/local/bin/git_rails: Permission denied`, make sure `git_rails` has execute permissions:

```bash
chmod +x ~/dotfiles/git_rails
```
