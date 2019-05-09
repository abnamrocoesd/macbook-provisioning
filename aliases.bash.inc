alias dc='docker-compose'
alias mc='molecule'
alias tf='terraform'
alias k='kubectl'
alias gp='git pull'
alias docker-clean='docker rm $(docker ps -q -f status=exited)'
alias nw='npm run nightwatch-dev --'
alias shipit='release-it --non-interactive'
alias portainer='docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer'
alias el="eslint -c ../.eslintrc --ignore-path ../.eslintignore '**/*.js'"
alias scr-pdf="defaults write com.apple.screencapture type PDF;killall SystemUIServer"
alias scr-png="defaults write com.apple.screencapture type png;killall SystemUIServer"
