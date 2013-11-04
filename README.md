dotfiles
========

Seeing that sharing dotfiles is the new trend, here are mine.

## Linux distro

I use Arch + OpenBox -- I'll add some of my keyboard mappings later.

## Xresources / bashrc

The `Xresources` theme is based on [FlatUI colors][fuc], and most of the code
is lifted directly from [Chris Kempson's `base16`][ckb16]. The `PS1` is
extremely minimal, with an indicator of whether the last command succeeded, and
that's it (the full path is stored in the window title bar).

![term theme](https://raw.github.com/tpoisot/dotfiles/master/img/term.png)

I use *Source Code Pro* at size 13, because it's just amazingly beautiful, and
easy to read in almost all lighting condition. My terminal of choice is
`urxvt-unicode`.

## vim color theme

The `flat.vim` color scheme is largely a work in progress, and notably the
`gvim` theme is *not* what it's supposed to be (because I use `vim` in the
terminal). I'm still working on customizing the `makefile` and `pandoc`
syntax highlighting. In any case, it provides a *great* integration with the terminal colors.

![term theme](https://raw.github.com/tpoisot/dotfiles/master/img/python.png)

## conkyrc

Nothing fancy here. The uptime, battery remaining, and current use for each
CPU, along with the top 5 processes.

## tint2rc

A companion to the [*Futura* theme for OpenBox][futura], using the same
aesthetic of no rounded corners, no shadows, no transparency.


[fuc]: http://flatuicolors.com/
[ckb16]: https://github.com/chriskempson/base16
[futura]: http://nale12.deviantart.com/gallery/34824214
