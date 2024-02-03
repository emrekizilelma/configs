#!/bin/bash

show_menu()
{
  echo "*-*-*-*-*-*-*--*-*-*-*-*-*-*-*-*-*-*-*"
  echo "-- Fedora Post Installation Script -- "
  echo "Choose the Software that want to install"
  echo "1.) Brave Browser"
  echo "2.) ZSH"
  echo "3.) NvimChad"
  echo "4.) All"
  echo "*-*-*-*-*-**-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
}

install_brave()
{
  sudo dnf install dnf-plugins-core -y

  sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo -y

  sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc -y

  sudo dnf install brave-browser -y
}

install_zsh()
{
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_nvimChad()
{
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim  
}

install_all()
{
  echo "Installing..."
  install_brave
  install_zsh
  install_nvimChad
  echo "Installed All Programs!"
}

show_menu

echo "Enter the number of choose: "
read choose

if [ $choose == 1 ]
then
  install_brave
fi

if [ $choose == 2 ]
then
  install_zsh
fi 

if [ $choose == 3 ]
then
  install_nvimChad
fi 

if [ $choose == 4 ]
then
  install_all
fi
