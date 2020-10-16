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
echo -e "\e[95mDevelopers: DWSK" 
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

echo "$Red This installer is primary for wsl command line packages for basic setup"
echo "$Green Please eneter the number that you want to install "
echo "0. Install all for new system"
echo "1. Update and upgrade"
echo "2. Build essentials"
echo "3.vscode setup in wsl"
echo "4. Node using nvm"
echo "5. Vim and its config"
echo "6. Curl and Git with gits config"
echo "7. ZSH, colorLs and powerline and config"
echo "8. Docker and config"
echo "9. for Python3, pip and jupiter notebook"
echo "10. for cleaning unused mess"






####################               Functions       ###########################################


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
Vscodesetup(){
	echo "$Red Installing and updating vscode. PS: it may open vscode "
	code.
	echo "$Green Task Completed"
	
}
Nvm(){
	echo "$Red Installing Nvm[Node Version Mangaer]"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
	$ source ~/.bashrc
	export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
	echo "$Green installed nvm"
	echo "$Red Installing latest lts version of node"
	nvm install lts
}

Vim(){
	echo "$Red Installing VIm"
	# Install Vim text editor
    printf "\n>>> Vim is going to be installed >>>\n"
	sudo apt-get install vim -y
	echo "$Green  Vim is installed"

	echo "$Red Configuring the Vim "
}

GitCurl(){
		echo "$Red Installing Curl"
		sudo apt-get install curl -y
		echo "$Green Curl Installed"
		echo "$Red Installing Git"
		sudo apt-get install git --qq --y
		# Install cUrl
		echo "\n>>> Curl is going to be installed >>>\n"
		echo "$Red Configuring Git"

}

JavaDEP(){
		echo "$Red Install Java JDK and all its dependencies"
		echo -e "\e[92m>>>>>>>>>>>>>>>>>BEGIN JAVA<<<<<<<<<<<<<<<<<<<"
		# Install Oracle Java
		sudo apt install default-jdk
		echo "Version Java"
		java -version
		echo -e "\e[92m>>>>>>>>>>>>>>>>>END JAVA<<<<<<<<<<<<<<<<<<<"

}

DockerInstall(){

	# Install Docker and docker-compose
		printf "\n>>> Docker and docker-compose are going to be installed >>>\n"
		sudo apt-get install mysql-client -y
		# 2020-04.29: Docker 19.03.8 and docker-compose 1.25.0. Using official repo to keep this updateable
		sudo apt-get install docker.io docker-compose -y
		sudo systemctl enable docker
		# This is to execute Docker command without sudo. Will work after logout/login because permissions should be refreshed
		sudo usermod -aG docker ${USER}
		}


Clean(){
	
		## autoclean and autoremove
		sudo apt autoremove
		sudo apt autoclean
}
Pysetup(){
		#this is for python setup with jupiter notebook 

}

Customizations(){
		##customization
		echo -e "Installing and confugring git and zsh along with powerline also colorLs"
		
		echo -e "Installing Ruby and COlor LS"
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
	}

CleanInstall(){
	UpdateandUpgrade()
	BuildEss()
	Vscodesetup()
	Nvm()
	Vim()
	GitCurl()
	JavaDEP()
	DockerInstall()
	Pysetup()
	Customizations()
	Clean()
}

