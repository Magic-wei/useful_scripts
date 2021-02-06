# useful_scripts
Various useful scripts for

* Ubuntu 16.04 LTS



### Tools

**It is recommended to run `./setup.sh` for setup in `$HOME/bin` or `$HOME/.bashrc`, then you can use tools like `git_update_batch`, `find_git_repo` and `echo_with_color` directly in the terminal under arbitrary directory. You can easily get instructions for each tools by using `-h` or `--help` after the command.**

* To setup entry in `$HOME/bin` (default), use `./setup.sh` or `./setup.sh bin`
* To setup aliases in `$HOME/.bashrc`, use `./setup.sh bashrc`

| Tools                                        | Status | Dependencies  | Description                                                  | Usage                                                        |
| -------------------------------------------- | :----: | :-----------: | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [`find_all_folders`](tools/find_all_folders) |   --   |      --       | Find all folders in `${Given_Dir}`                           | Get instructions by running `find_all_folders -h` in terminal after successful installation. |
| [`find_git_repo`](tools/find_git_repo)       |   --   |      --       | Find all git repositories in `${Given_Dir}`                  | Get instructions by running `find_git_repo -h` in terminal after successful installation. |
| [`git_update_batch`](tools/git_update_batch) |   --   | find_git_repo | Apply git commands ${mode} to all git repositories in `${Given_Dir}` | Get instructions by running `git_update_batch -h` in terminal after successful installation. |
| [`echo_with_color`](tools/echo_with_color)   |   --   |      --       | Advanced echo function in terminal with simplified commands  | Get instructions by running `echo_with_color -h` in terminal after successful installation. |
| [`gitcd`](tools/gitcd)                       |   --   | find_git_repo | A roscd-like tool to change current directory to the root directory of a repo directly. Need to firstly create a dictionary of all git repos under specific path. | Get instructions by running `gitcd -h` in terminal after successful installation. |

> **Note**: 
>
> 1. You can easily get instructions for each tools by using `-h` or `--help` after the command.
> 2. `${Given_Dir}` can be either an absolute path or a relative path.



### Examples

| examples                                                     | status | description                                                  |
| ------------------------------------------------------------ | :----: | :----------------------------------------------------------- |
| [`open_multiple_terminal.sh`](examples/open_multiple_terminal.sh) |   --   | Provide an example to create two terminals one-by-one with one second interval and execute given commands in these new terminals |

> **Note**:
>
> * Usage: run `./scripts/examples/<*>.sh` in terminal under the root directory of this git repository. 

### Installers

| installers                                                | status | dependencies | description                                                  | version |
| --------------------------------------------------------- | :----: | :----------: | :----------------------------------------------------------- | :-----: |
| [`install_keepassxc.sh`](installers/install_keepassxc.sh) |   --   |      --      | [KeePassXC](https://keepassxc.org/) can store your passwords safely and auto-type them into your everyday websites and applications. | latest  |
| [`install_okular.sh`](installers/install_okular.sh)       |   --   |      --      | [Okular](https://okular.kde.org/) is a universal document viewer developed by [KDE](https://www.kde.org/), which works on multiple platforms, including but not limited to Linux, Windows, macOS, *BSD, etc. | latest  |
| [`install_sublime.sh`](installers/install_sublime.sh)     |   --   |      --      | [Sublime Text](https://www.sublimetext.com/) is a text editor for code, markup and prose, and [Sublime Merge](https://www.sublimemerge.com/) helps you better work on Git version control. | latest  |
| [`install_typora.sh`](installers/install_typora.sh)       |   --   |      --      | [Typora](https://typora.io/) will give you a seamless experience as both a reader and a writer when using Markdown. | latest  |
| [`install_peek.sh`](installers/install_peek.sh)           |   --   |      --      | [Peek](https://github.com/phw/peek) is a simple animated GIF screen recorder with an easy to use interface. | latest  |
| [`install_flameshot.sh`](installers/install_flameshot.sh) |   --   |      --      | [Flameshot](https://flameshot.js.org/) is a powerful yet simple to use screenshot software. |  0.6.0  |

> **Note**:
>
> * Usage: run `./scripts/installers/<*>.sh` in terminal under the root directory of this git repository. 