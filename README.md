# My Dotfiles for Linux Server

These are the minimal dotfiles I like to install on a headless Linux box (such as a web server) running bash.

&#9657; **Running Linux with a GUI as a development environment? Check out the [linux-desktop branch](https://github.com/joshukraine/dotfiles/tree/linux-desktop)**

&#9657; **Running OS X? Check out the [master branch](https://github.com/joshukraine/dotfiles).**

### Supported distros

This script has been successfully tested on the following Linux distros:

* Ubuntu 14.04, 15.04
* Debian 8.1&#42;
* Raspbian 4.1 (based on Debian Jessie)

&#42; Some installations of Debian [do not include the `sudo` command](https://github.com/gitlabhq/gitlabhq/blob/master/doc/install/installation.md#1-packages--dependencies) by default. In such cases, `sudo` must be installed manually in order for the installer below to succeed.

### Installation

To install with a one-liner, run this:

```sh
bash <(wget -qO- https://raw.githubusercontent.com/joshukraine/dotfiles/linux-server/bootstrap) 2>&1 | tee ~/bootstrap.log
```

Want to read through the script first?

```sh
wget -qO- https://raw.githubusercontent.com/joshukraine/dotfiles/linux-server/bootstrap > bootstrap
less bootstrap
bash bootstrap 2>&1 | tee ~/bootstrap.log
```

### What does it do?

When you invoke `bootstrap`, this is what it does in a nutshell:

* Patch the system and install various software packages
* Set up some basic directories in `$HOME`
* Symlink dotfiles to `$HOME`
* Install Vundle and plugins for vim.


### Some of my favorite dotfile repos

* Pro Vim (https://github.com/Integralist/ProVim)
* Trevor Brown (https://github.com/Stratus3D/dotfiles)
* Lars Kappert (https://github.com/webpro/dotfiles)
* Ryan Bates (https://github.com/ryanb/dotfiles)
* thoughtbot (https://github.com/thoughtbot/dotfiles)
* Ben Orenstein (https://github.com/r00k/dotfiles)
* Joshua Clayton (https://github.com/joshuaclayton/dotfiles)
* Drew Neil (https://github.com/nelstrom/dotfiles)
* Chris Toomey (https://github.com/christoomey/dotfiles)
* Kevin Suttle (https://github.com/kevinSuttle/OSXDefaults)
* Carlos Becker (https://github.com/caarlos0/dotfiles)
* Zach Holman (https://github.com/holman/dotfiles/)
* Mathias Bynens (https://github.com/mathiasbynens/dotfiles/)
* Paul Irish (https://github.com/paulirish/dotfiles)


### Helpful web resources on dotfiles, et al.

* http://dotfiles.github.io/
* https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
* http://code.tutsplus.com/tutorials/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles--net-35449
* https://github.com/webpro/awesome-dotfiles
* http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
* http://carlosbecker.com/posts/first-steps-with-mac-os-x-as-a-developer/
* https://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-1-core-files-and-custom-shell
