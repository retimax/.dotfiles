# DOTFILES
Those are my personal dotfiles build in Arch Linux, nowadays i'm using i3wm with polybar integrated and a few more details that you can see in this repo

## INSTALLATION(Arch Based)
**You can use Stow to install all my dotfiles, just need to do this:**
Install stow and more needed packpages (Arch only):
```bash
  sudo pacman -S stow polybar rofi python-pip kitty vim neovim picom
  yay -S betterlockscreen i3-gaps-rounded-git
  sudo pip3 install pywal
```
Clone this repository using git clone:
`git clone https://github.com/retimax/.dotfiles.git`

Go to the repo directory and make symbolyc links to all the config with this commands:
```bash
  cd .dotfiles
  stow .
```
 
 But if you want you can do it manually, just clone this repo and copy whatever file you want on your 
 .config file (usually is in this directory: **~/.config**)
 
 # LONG LIVE ARCH
