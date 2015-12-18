dotfiles
========

My personal dotfiles. The framework is heavily inspired by Zach Holman's
[holman/dotfiles](https://github.com/holman/dotfiles) dotfiles script(s).

Configuration files are grouped by topic (e.g., "git", "vim", "tmux", etc.),
and a file named `[whatever].symlink` will by symlinked to `~/.[whatever]`.
Entire directories can also be symlinked (for example the contents of `.vim/`
which contains all my vim plugins). This is accomplished by naming the
directory `[whatever].dir`.

## Prerequisites

- [Vundle](https://github.com/VundleVim/Vundle.vim)

## Installation

The purpose of this project was to be able to easily install my dotfiles on any
machine I am working on, so I created a bootstrap script in order to simplify
things a bit. Just run:

`curl https://raw.github.com/robbernabe/dotfiles/master/bootstrap | bash`

...and you should be good to go assuming you have git installed.
