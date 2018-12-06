#!/bin/bash
# Homebrew is the open source package manager of choice for the Mac.
# This script uses it to install the packages listed in the `Brewfile`.

if ! command -v brew > /dev/null
then
    test -d /usr/local/includes || sudo mkdir -p /usr/local/includes
    test -d /usr/local/Frameworks || sudo mkdir -p /usr/local/Frameworks
    test -d /usr/local/homebrew || sudo mkdir -p /usr/local/homebrew
    test -w /usr/local/homebrew || sudo chown -R "${USER}" /usr/local/homebrew
    test -x /usr/local/bin/brew || (curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C /usr/local/homebrew)
    test -O /usr/local/lib || sudo chown -R "${USER}" /usr/local/*
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Homebrew hardening
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_GITHUB_API=1
export HOMEBREW_NO_INSECURE_REDIRECT=1

brew bundle
