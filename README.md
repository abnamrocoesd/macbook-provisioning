# Macbook Provisioning

Automate your macOS Configuration by using Brewfile

## Getting started

Install Homebrew

```
$ ./homebrew.sh
```

## Install packages

Customize the `Brewfile` where needed.

```
$ brew bundle
```

## Install Atom packages

```
$ apm install --packages-file atom-package-list.txt
```

## Install pip packages

```
$ pip install -r requirements.txt
```

## Install NPM packages

```
$ npm install -g
```

## Install Ruby Gems

```
$ bundle install
```

## Bash Aliases

Include the following line in `~/.bash_profile` .

```
if [ -f "$HOME/aliases.bash.inc" ]; then . "$HOME/aliases.bash.inc"; fi
```

Copy `aliases.bash.inc` to your home directory using the following command.

```
$ cp aliases.bash.inc ~/
```
