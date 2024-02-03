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
}

install_brave()
{
  sudo dnf install dnf-plugins-core

  sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

  sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

  sudo dnf install brave-browser
}

install_zsh()
{
  echo "TEST ZSH"
}

install_nvimChad()
{
  echo "TEST nvimChad"
}

install_all()
{
  echo "TEST all"
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
