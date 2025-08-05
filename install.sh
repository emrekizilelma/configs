#!/bin/bash

show_menu()
{
  echo "*-*-*-*-*-*-*--*-*-*-*-*-*-*-*-*-*-*-*"
  echo "-- Fedora Post Installation Script -- "
  echo "Choose the Software that want to install"
  echo "1.) Brave Browser"
  echo "2.) ZSH"
  echo "3.) NvimChad"
  echo "4.) Rpmfusion"
  echo "5.) All"
  echo "*-*-*-*-*-**-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
}

install_brave()
{
  curl -fsS https://dl.brave.com/install.sh | sh
}

install_zsh()
{
  sudo dnf install zsh -y
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_nvimChad()
{
  sudo dnf install neovim -y
  git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim  
}

install_rpmfusion()
{
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
}

install_all()
{
  echo "Installing..."
    install_brave
    install_zsh
    install_nvimChad
    install_rpmfusion
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
    install_rpmfusion
fi

if [ $choose == 5 ]
then
    install_all
fi
    
