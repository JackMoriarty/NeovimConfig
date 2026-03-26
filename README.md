# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Plugins
### rsync.nvim
**rsync.nvim** looks for `.nvim/rsync.toml` file by default in the root of your
project. The path can also be set with the `project_config_path` key in the
plugin configuration.

The current options available:

```toml
# this is the path to the remote. Can be either a local/remote filepath.
remote_path = "../copy/"
# or if using ssh
remote_path = "user@host:/home/user/path/"

# specifying a file(s) which should be synced "down" but are on ignore files.
# this is a workaround to sync down files which are included on ignore files.
remote_includes = "build.log"
# or using an array if multiple files are needed.
remote_includes = ["build.log", "build/generated.json"]

# specifying an gitignore file(s). Files matching patterns in ignore files are
# excluded from "SyncUp" and "SyncDown" except ones specified in `remote_includes`.
# For example, to exclude file(s) in the global gitignore and the project gitignore:
ignorefile_paths = ["~/.gitignore", ".gitignore"]
```