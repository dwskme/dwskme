#!/bin/bash
## variables for color
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'
##echo "$Blue I like chocolate cake "   this is example because i forgot i am stupid

##
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m********************    Script Post Instalation Ubuntu    ***********************"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m                _____          _       _____           _         _  _ "
echo -e "\e[96m               |  __ \        | |     |_   _|         | |        | || |"
echo -e "\e[96m               | |__) |__  ___| |_      | |  _ __  ___| |_ __ _  | || |"
echo -e "\e[96m               |  ___/ _ \/ __| __|     | |  | '_ \/ __| __/ _\` | || |"
echo -e "\e[96m               | |  | (_) \\__ \\ |_   _| _| |_| | | \\__ \\ || (_| | || |"
echo -e "\e[96m               |_|   \\___/|___/\\__| |______|_| |_|___/\\__\\__,_|_||_|"
echo " "
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[95mDevelopers: Phellipe Rodrigues / Wendreo Fernandes" 
echo -e "\e[95mRepository: \e[92mhttps://github.com/phelliperodrigues/Post-Install-Linux-UbuntuBased"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m********************      Thanks For Use This Script      ***********************"
echo -e "\e[96m---------------------------------------------------------------------------------"
echo -e "\e[96m---------------------------------------------------------------------------------"

#simple install script for wsl

echo "$Red DWSK is taking over your system "
echo "$Red dont panic its for u "
echo "$Green it may take time so jsut be patient"
echo "$Blue i swear i am not hacking"
echo "$Red i wish i could though"
echo "$Green haha just kidding ;)"

#the commands begin

cd ~

sudo -k 



###############################################################################

echo "$Red This installer is primarly for wsl command line packages for basic setup"
echo "$Green Please eneter the number that you want to install "
echo "0. Install all for new system"
echo "1. Update and upgrade"
echo "2. Build essentials"
echo "3. Node using nvm"
echo "4. Vim and its config"
echo "6. Curl and Git with gits config"
echo "7. Oracle java"
echo "8. ZSH, colorLs and powerline and config"
echo "9. Docker and config"
echo "10. for Python3, pip and jupiter notebook"
echo "11. for cleaning unused mess"






####################               Functions       ###########################################
CleanInstall(){
	UpdateandUpgrade();
	BuildEss();
}

UpdateandUpgrade(){
		echo "$Red Installing and Updating almost everything "
		sudo apt-get update --qq
		#--qq igonore the errors
		sudo apt-get upgrade --y
		
		sudo apt install manpages-dev  --y
		sudo apt-get dist-upgrade -y
		echo "$Green Completed"

}

BuildEss(){
	echo "$Red Installing and Updating almost everything "
	sudo apt-get install build-essential --y --q
	echo "$Green Completed"
}








# Install cUrl
    echo "\n>>> cUrl is going to be installed >>>\n"
sudo apt-get install curl -y











# Node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Install Vim text editor
    printf "\n>>> Vim is going to be installed >>>\n"
sudo apt-get install vim -y


# Install Docker and docker-compose
    printf "\n>>> Docker and docker-compose are going to be installed >>>\n"
sudo apt-get install mysql-client -y
# 2020-04.29: Docker 19.03.8 and docker-compose 1.25.0. Using official repo to keep this updateable
sudo apt-get install docker.io docker-compose -y
sudo systemctl enable docker
# This is to execute Docker command without sudo. Will work after logout/login because permissions should be refreshed
sudo usermod -aG docker ${USER}

##install java
echo -e "\e[95mInstall Oracle Java: : [Ss,Nn] - Default(S)"
read continuar
case "$continuar" in  
    s|S|"")
	echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN JAVA<<<<<<<<<<<<<<<<<<<"
	# Install Oracle Java
	sudo apt install default-jdk
	echo "Version Java"
	java -version
	echo -e "\e[92m>>>>>>>>>>>>>>>>>END JAVA<<<<<<<<<<<<<<<<<<<"
;;
*)
    
;;

##customization
echo -e "Installing and confugring git and zsh along with powerline also colorLs"
sudo apt-get install git --qq --y
sudo apt install ruby ruby-dev git --qq  --y
git clone https://github.com/athityakumar/colorls.git
cd colorls
sudo gem install colorls
cd
sudo apt-get install zsh
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Create fonts folder in your home dir
su $SUDO_USER -c "mkdir $HOME/.local/share/fonts"
# Install fonts needed for Powerlevel10k
su $SUDO_USER -c "wget -P /tmp/ https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf && mv /tmp/MesloLGS\ NF\ Regular.ttf  $HOME/.local/share/fonts/"
su $SUDO_USER -c "wget -P /tmp/ https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf && mv /tmp/MesloLGS\ NF\ Bold.ttf  $HOME/.local/share/fonts/"
su $SUDO_USER -c "wget -P /tmp/ https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf && mv /tmp/MesloLGS\ NF\ Italic.ttf  $HOME/.local/share/fonts/"
su $SUDO_USER -c "wget -P /tmp/ https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf && mv /tmp/MesloLGS\ NF\ Bold\ Italic.ttf  $HOME/.local/share/fonts/"
# Install Powerlevel10k
su $SUDO_USER -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k"





## autoclean and autoremove
sudo apt autoremove
sudo apt autoclean