# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
# if [ -n "$BASH_VERSION" ]; then
#     # include .bashrc if it exists
#     if [ -f "$HOME/.bashrc" ]; then
#         . "$HOME/.bashrc"
#     fi
# fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Rust setup
. "$HOME/.cargo/env"

# Go setup
export PATH=/usr/local/go/bin:$PATH # The Go program itself, therefore can take precedence
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin # Where Go installs to, should not shadow my other programs

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

# Java LSP setup
export PATH=$PATH:$HOME/jdtls/bin

# Ruby setup
eval "$(~/.rbenv/bin/rbenv init - bash)"
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Deno setup
export DENO_INSTALL="/home/shpun/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
