# My emacs configuration

Clone this repository to `~/emacs` and then make a symlink to `~/.emacs.d`:

```
$ git clone git@github.com:xrash/emacs.git
$ ln -s ~/emacs ~/.emacs.d
```

Emacs will load `~/.emacs.d/init.el`, and that will load everything else.

## Install

Need to install lsp servers:

```
$ npm install -g typescript typescript-language-server
$ go install golang.org/x/tools/gopls@latest
```

When we start Emacs, it will automatically install packages configured with `use-package`.

Then, we need to install the tree sitter grammars:

```
M-: (mapc #'treesit-install-language-grammar '(typescript tsx go markdown markdown-inline))
```
