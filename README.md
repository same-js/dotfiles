# dotfiles

## Installation

```console
$ cd ~
$ git clone https://github.com/same-js/dotfiles.git
$ cd dotfiles/.bin
$ ./install.sh
```

If all of the above steps have been executed, 

* Backup of current dotfiles will be created in `~/dotfiles_backup`.
* Dotfiles at home directory of user (`~`) will be replaced by hardlinks of files cloned from git repositroies.
