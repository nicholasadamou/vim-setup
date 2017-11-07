# VIM Setup

![vim](vim.gif)

<a target='_blank' rel='nofollow' href='https://app.codesponsor.io/link/9xfHBCXLLneQfkK8qiHeHcLd/nicholasadamou/vim-setup'>
  <img alt='Sponsor' width='888' height='68' src='https://app.codesponsor.io/embed/9xfHBCXLLneQfkK8qiHeHcLd/nicholasadamou/vim-setup.svg' />
</a>

This document describes how I set up VIM to develop the tools on that are on my Github page.

If you have any comments or suggestions, feel free to give me a shout [on Twitter](https://twitter.com/nicholasadamou)!

## Requirements

In order to install my vim configurations, you have to install `git`.

To install `git` on `Ubuntu`, you need to use `APT`: `sudo apt install git`

To install `git` on `MacOS` you need to use [`brew`](http://brew.sh/): `brew install git`

If `brew` is not installed, install it using the following command: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## Setup

To setup `VIM` to look like what is seen in the above image run the following command:

1. `cd $HOME && git clone https://github.com/nicholasadamou/vim-setup.git && cd vim-setup/ && chmod +x install.sh && ./install.sh`

The above command runs the [`install.sh`](install.sh) script. (:warning: **DO NOT** run the `setup` snippet if you don't fully
understand [what it does](install.sh). Seriously, **DON'T**!)

## Resources

[vimawesome](https://vimawesome.com/) - Awesome VIM plugins from accross the universe.

## License

The code is available under the [MIT license](LICENSE.txt).