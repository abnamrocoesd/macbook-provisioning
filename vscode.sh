#!/bin/bash -e

if ! command -v code > /dev/null
then
    echo "Visual Studio Code not found."
    exit 2
fi

for extension in `cat VSCode_extensions`
do
    code --force --install-extension $extension
done
