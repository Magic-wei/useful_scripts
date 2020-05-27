# useful_scripts
Various useful scripts for

* Ubuntu 16.04 LTS



### Tools

**It is recommended to run `./setup.sh` for setup in `$HOME/bin` or `$HOME/.bashrc`, then you can use tools like `git_update_batch`, `find_git_repo` and `echo_with_color` directly in the terminal under arbitrary directory. You can easily get instructions for each tools by using `-h` or `--help` after the command.**

* To setup entry in `$HOME/bin`, use `./setup.sh` or `./setup.sh bin`
* To setup aliases in `$HOME/.bashrc`, use `./setup.sh bashrc`

| tools                                              | status | dependencies  | description                                                  | usage example                                                |
| -------------------------------------------------- | :----: | :-----------: | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [`find_all_folders`](tools/find_all_folders)       |   --   |      --       | find all folders in `${Given_Dir}`                           | run in terminal under the root directory of this git repository. `./tools/find_all_folders ${Given_Dir}` |
| [`find_git_repo`](tools/find_git_repo)             |   --   |      --       | find all git repositories in `${Given_Dir}`                  | run in terminal under the root directory of this git repository. `./tools/find_git_repo ${Given_Dir}` |
| [`export_git_repo_dir`](tools/export_git_repo_dir) |   --   | find_git_repo | export the path of all git repositories in `${Given_Dir}`    | run in terminal under the root directory of this git repository. `./tools/find_git_repo ${Given_Dir}` |
| [`git_update_batch`](tools/git_update_batch)       |   --   | find_git_repo | do git commands ${mode} in all git repositories in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./tools/find_git_repo ${Given_Dir} ${mode}` |
| [`echo_with_color`](tools/echo_with_color)         |   --   |      --       | advanced echo function in terminal                           | get instructions by running `./tools/echo_with_color -h` in terminal under the root directory of this git repository. |

> **Note**: 
>
> 1. if you don't input `${Given_Dir}`, then it will start from `~` i.e. `/home/user_name`.
> 2. ${mode} now support: status, push, pull, fetch and remote.



### Installers

| installers                                                | status | dependencies | description                                                  | version |
| --------------------------------------------------------- | :----: | :----------: | :----------------------------------------------------------- | :-----: |
| [`install_keepassxc.sh`](installers/install_keepassxc.sh) |   --   |      --      | [KeePassXC](https://keepassxc.org/) can store your passwords safely and auto-type them into your everyday websites and applications. | latest  |
| [`install_okular.sh`](installers/install_okular.sh)       |   --   |      --      | [Okular](https://okular.kde.org/) is a universal document viewer developed by [KDE](https://www.kde.org/), which works on multiple platforms, including but not limited to Linux, Windows, macOS, *BSD, etc. | latest  |
| [`install_sublime.sh`](installers/install_sublime.sh)     |   --   |      --      | [Sublime Text](https://www.sublimetext.com/) is a text editor for code, markup and prose, and [Sublime Merge](https://www.sublimemerge.com/) helps you better work on Git version control. | latest  |
| [`install_typora.sh`](installers/install_typora.sh)       |   --   |      --      | [Typora](https://typora.io/) will give you a seamless experience as both a reader and a writer when using Markdown. | latest  |

> **Note**:
>
> * Usage: run `./scripts/installers/<*>.sh` in terminal under the root directory of this git repository. 