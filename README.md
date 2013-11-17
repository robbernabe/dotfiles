dotfiles
========

My personal dotfiles. The framework is heavily inspired by Zach Holman's
[holman/dotfiles](https://github.com/holman/dotfiles) dotfiles script(s).

Configuration files are grouped by topic (e.g., "git", "vim", "tmux", etc.).,
and a file named `[whatever].symlink` will by symlinked to `~/.[whatever]`.
Entire directories can also be symlinked (for example the contents of `.vim/`
which contains all my vim plugins). This is accomplished by naming the
directory `[whatever].dir`.

Installation
------------

`curl https://raw.github.com/robbernabe/dotfiles/master/bootstrap | bash`
