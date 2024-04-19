#！/bin/bash

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

# check && install Chrome
if [ -d /Applications/Google\ Chrome.app ]; then
  echo "\033[0;32m[✓]\033[0m Chrome is already installed"
else
  cd ~/Downloads
  curl https://dl.google.com/chrome/mac/stable/CHFA/googlechrome.dmg -o googlechrome.dmg --progress-bar
  # attach dmg, and move aplication
  hdiutil attach googlechrome.dmg
  cp -rf /Volumes/Google\ Chrome/Google\ Chrome.app /Applications
  if [ -d /Applications/Google\ Chrome.app ]; then
    echo "\033[0;32m[✓]\033[0m Chrome installs success"
  else
    echo "\033[0;31m[×]\033[0m Chrome installs error"
  fi
fi

# check && install Xcode gcc -v
# https://developer.apple.com/download/all/
if xcode-select -p; then
  echo "\033[0;32m[✓]\033[0m Xcode is already installed"
else
  cd ~/Downloads
  echo "xcode commond line tools is downloading and will be installed soon，\033[0;32m[!] The computer password \033[0m is required during the installation process"
  curl https://tosv.byted.org/obj/eden-internal/upfpe/shell/Command_Xcode_13.dmg -o xcode.dmg --progress-bar
  hdiutil attach xcode.dmg
  cd /Volumes/Command\ Line\ Developer\ Tools
  sudo installer -pkg /Volumes/Command\ Line\ Developer\ Tools/Command\ Line\ Tools.pkg -target /
  if xcode-select -p; then
    echo "\033[0;32m[✓]\033[0m Xcode Command Line Tools installs success"
  else
    echo "\033[0;31m[×]\033[0m  Xcode Command Line Tools installs error"
  fi
fi

# check && install vscode
if [ -d /Applications/Visual\ Studio\ Code.app ]; then
  echo "\033[0;32m[✓]\033[0m vscode is already installed"
else
  cd ~/Downloads
  echo "vscode is downloading and will be installed soon"
  curl https://vscode.download.prss.microsoft.com/dbazure/download/stable/903b1e9d8990623e3d7da1df3d33db3e42d80eda/VSCode-darwin-universal.zip -o vscode.zip --progress-bar
  unzip -q ~/Downloads/vscode.zip
  cp -rf ~/Downloads/Visual\ Studio\ Code.app /Applications
  rm -rf ~/Downloads/Visual\ Studio\ Code.app
  if [ -d /Applications/Visual\ Studio\ Code.app ]; then
    echo "\033[0;32m[✓]\033[0m vscode installs success"
    cat <<EOF >>${HOME}/.zshrc
 export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
EOF
    source ${HOME}/.zshrc
    # install vscode extension
    code --install-extension eamodio.gitlens
    code --install-extension esbenp.prettier-vscode
  else
    echo "\033[0;31m[×]\033[0m vscode installs error"
  fi
fi

# install nvm & node
if command_exists node; then
  echo "\033[0;32m[✓]\033[0m node is already installed"
else
  echo "nvm is downloading & node is going to install"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  if [ ! -f "${HOME}/.zshrc" ]; then
    touch ${HOME}/.zshrc # create file if not exist
  fi
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

  echo '\nexport NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"\n[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >>${HOME}/.zshrc
  source ${HOME}/.zshrc

  nvm install --lts
  nvm use --lts
  if command_exists node; then
    echo "\033[0;32m[✓]\033[0m node installs success"
  else
    echo "\033[0;31m[×]\033[0m node installs error, nvm installs error"
  fi
fi

# install pnpm
if command_exists pnpm; then
  echo "\033[0;32m[✓]\033[0m pnpm already installed"
else
  echo "pnpm is installing"
  npm install -g pnpm
  if pnpm --version; then
    echo "\033[0;32m[✓]\033[0m pnpm installs success"
  else
    echo "\033[0;31m[×]\033[0m pnpm installs error"
  fi
fi


# install brew
if command_exists brew; then
  echo "\033[0;32m[✓]\033[0m brew already installed"
else
  echo "brew is installing"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if brew --version; then
    echo "\033[0;32m[✓]\033[0m brew installs success"
  else
    echo "\033[0;31m[×]\033[0m brew installs error"
  fi
fi

# install raycast
if [ -d /Applications/Google\ Raycast.app ]; then
  echo "\033[0;32m[✓]\033[0m raycast already installed"
else
  echo "raycast is installing"
  brew install --cask raycast
  if brew list | grep raycast; then
    echo "\033[0;32m[✓]\033[0m raycast installs success"
  else
    echo "\033[0;31m[×]\033[0m raycast installs error"
  fi
fi


# install sougou
if [ -d /Applications/Google\ Raycast.app ]; then
  echo "\033[0;32m[✓]\033[0m raycast already installed"
else
  echo "raycast is installing"
  brew install --cask raycast
  if brew list | grep raycast; then
    echo "\033[0;32m[✓]\033[0m raycast installs success"
  else
    echo "\033[0;31m[×]\033[0m raycast installs error"
  fi
fi

echo '========================== 运行完毕，环境已准备就绪, 可以开始开发 ======================'
echo "\033[0;32m[✓]\033[0m 请访问 \033[0;32mhttps://edenx.bytedance.net/\033[0m 来了解更多"
