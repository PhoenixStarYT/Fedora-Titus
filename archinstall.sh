#Paru AUR Helper
sudo pacman --noconfirm -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

#Update and install Essential Packages
sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S neofetch
sudo pacman --noconfirm -S htop
sudo pacman --noconfirm -S bspwm
sudo pacman --noconfirm -S sxhkd
sudo pacman --noconfirm -S polybar
sudo pacman --noconfirm -S rofi
sudo pacman --noconfirm -S picom
sudo pacman --noconfirm -S git
sudo pacman --noconfirm -S kitty
sudo pacman --noconfirm -S wget
sudo pacman --noconfirm -S unzip
sudo pacman --noconfirm -S nano
sudo pacman --noconfirm -S plasma

#Install Desktop apps
sudo pacman --noconfirm -S nautilus
sudo pacman --noconfirm -S nitrogen
sudo pacman --noconfirm -S variety
sudo pacman --noconfirm -S lxappearance
sudo pacman --noconfirm -S pulseaudio
sudo pacman --noconfirm -S pavucontrol
sudo pacman --noconfirm -S sddm
sudo pacman --noconfirm -S rofi
sudo pacman --noconfirm -S firefox

#Setup SDDM
sudo systemctl enable sddm

#Theming & Fonts
paru --noconfirm -S xfce-theme-greybird
paru --noconfirm -S bibata-cursor-theme
sudo pacman --noconfirm -S breeze
paru --noconfirm -S otf-font-awesome
paru --noconfirm -S ttf-font-awesome
paru --noconfirm -S nordzy-cursors

cd $builddir
mkdir .config
cd koenarch-bspwm
mv dotconfig/* ~/.config
mv .* ~

# Download Nordic Theme
cd /usr/share/themes/
sudo git clone https://github.com/EliverLara/Nordic.git

# Fira Code Nerd Font variant needed
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
sudo unzip FiraCode.zip -d /usr/share/fonts
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
sudo unzip Meslo.zip -d /usr/share/fonts
fc-cache -vf
