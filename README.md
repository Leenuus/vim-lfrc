# vim-lfrc

- [lf, a great file manager](https://github.com/gokcehan/lf)

## Why

- I like vim
- I like lf
- Why not?

## Current Stage

Work in progress.

Even though I have been using neovim for long time, I didn't try programming related to highlighting and syntax.

Though I tried this time, but I don't have plan to go deeper into writing vim syntax and highlight files.

__Feel free to copy this repo for your use__.

## Installation

- Manual Installation
    1. copy `./syntax/lfrc.vim` to `~/.config/nvim/syntax/` or equivalent.
    2. copy `./ftdetect/lfrc.vim` to `~/.config/nvim/ftdect` or equivalent.

- Use your favorite package manager

```lua
-- for lazy.nvim
{
    "Leenuus/vim-lfrc"
}
```

## TODO

- Link `lf` options to proper highlight group.
- Match Builtin commands
- Match keybindings, and special key names

## Learning Resources

I do read some stuff to understand how `syntax` works in vim basically.

- [learn vim the hard way](https://learnvimscriptthehardway.stevelosh.com/chapters/45.html)
- vim, `:help syn-region`
- [`renpy.vim` repo does inspire me to do this job](https://github.com/chaimleib/vim-renpy)
