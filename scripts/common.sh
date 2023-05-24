echo
set +e
  
  xcode-select --install
  
  brew install --cask iterm2
  brew install --cask google-chrome
  brew install --cask firefox
  brew install --cask brave-browser
  brew install --cask slack
  brew install --cask zoom
  brew install --cask postman
  brew install --cask visual-studio-code
  brew install vim
  brew install tmux
  brew install tree
  brew install --cask intellij-idea
  brew install python
  brew install ruby
  brew install kotlin
  brew install postgresql
  brew install --cask microsoft-onenote
  brew install --cask adobe-creative-cloud
  brew install --cask google-drive
  brew install --cask google-cloud-sdk


  #Docker
  brew install --cask docker
  etc=/Applications/Docker.app/Contents/Resources/etc
  ln -s $etc/docker.zsh-completion "$(brew --prefix)/share/zsh/site-functions/_docker"
  ln -s $etc/docker-compose.zsh-completion "$(brew --prefix)/share/zsh/site-functions/_docker-composepopd"

  #Golang
  mkdir -p ~/go/src
  brew install go
  brew install dep
  brew install --cask goland

  #Java
  brew install openjdk
  sudo ln -sfn "$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk
  echo "export PATH=\"$(brew --prefix)/opt/openjdk/bin:\$PATH\"" >> ~/.zshenv
  echo "export CPPFLAGS=\"-I$(brew --prefix)/opt/openjdk/include\"" >> ~/.zshenv


  #spring boot
  echo "Installing Spring Boot"
  brew tap spring-io/tap
  brew install spring-boot

  #Kubectl
  brew install kubectl
  # Shell completion
  FILE=~/.zshrc
  if [[ -f "$FILE" ]]; then
      echo "$FILE exists proceeding."
  else 
      echo "$FILE does not exist, creating."
      touch $FILE
  fi

  echo 'source <(kubectl completion zsh)' >>~/.zshrc
  echo 'alias k=kubectl' >>~/.zshrc
  echo 'complete -F __start_kubectl k' >>~/.zshrc
  echo 'autoload -Uz compinit' >>~/.zshrc
  echo 'compinit' >>~/.zshrc



  #Node
  brew install node
  npm install --global yo
  npm install --global webpack
  npm install --global grunt-cli
  npm install --global gulp-cli
  npm install --global @ionic/cli
  npm install --global typescript

  #C
  brew install ccache
  brew install ctags
  brew install cmake
  brew install cscope
  brew install --cask clion
  brew install ninja

  #Terraform
  brew tap hashicorp/tap
  brew install hashicorp/tap/terraform
  terraform -install-autocomplete



  #iOS
  sudo gem install cocoapods
  brew install carthage
  brew install fastlane
  brew install --cask appcode --force

  #oh-my-zsh
  ZSH= sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
  brew install zsh-autosuggestions
  brew install zsh-syntax-highlighting

  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source ~/.zshrc
set -e