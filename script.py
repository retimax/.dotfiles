import os, time
from sys import stdout

def red():
    RED = "\033[1;31m"
    stdout.write(RED)

def green():
    GREEN = "\033[0;32m"
    stdout.write(GREEN)

def blue():
    BLUE = "\033[1;34m"
    stdout.write(BLUE)

def yellow():
    YELLOW = "\033[1;33m"
    stdout.write(YELLOW)

def purple():
    PURPLE = "\033[1;35m"
    stdout.write(PURPLE)

def white():
    WHITE = "\033[1;37m"
    stdout.write(WHITE)

intro = '''
   ________          __    _____.__.__                 
   \______ \   _____/  |__/ ____\__|  |   ____   ______
    |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/
    |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \ 
   /_______  /\____/|__|  |__|  |__|____/\___  >____  >
        \/                                \/     \/ 
'''         

def menu():
    red()
    print(intro)
    yellow()
    time.sleep(1)
    print('- Install my dotfiles\n')
    time.sleep(1)
    print('- Salir\n')
    time.sleep(1)
    blue()
    opcion= int(input('What do you want to do? -> 1|2 ->'))
    if opcion == 1:
        green()
        instalar()
    elif opcion == 2:
        green()
        print('Exit succesfully')
        exit()

def instalar():
    os.system('sudo pacman -S i3-wm i3-gaps git neovim zsh oh-my-zsh kitty rofi curl udiskie nitrogen thunar xorg-init pulseaudio exa bat lsd nerd-fonts-ubuntu-mono ttf-font-awesome vlc spotify discord lxappearance firefox cava polybar obs gtk3 betterlockscreen brightnessctl playerctl')
    os.system('git clone https://github.com/retimax/.dotfiles.git /home/$USER/dotfiles-rolka')
    os.system('rm -r /home/$USER/.config/i3')
    os.system('cp -r i3/.config/i3 /home/$USER/.config')
    os.system('cp -r kitty/.config/kitty /home/$USER/.config')
    os.system('cp -r rofi/.config/rofi /home/$USER/.config')
    os.system('cp -r nvim/.config/nvim /home/$USER/.config')
    os.system('cp -r vim/.config/vim /home/$USER/.config')
    os.system('cp -r polybar/.config/polybar /home/$USER/.config')
    os.system('rm -r /home/$USER/.zshrc')
    os.system('cp -r powermenu ~/.local/bin/')
    os.system('mkdir ~/.config/bin')
    os.system('cp -r htbstatus.sh ~/.config/bin')
    os.system('git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting')
    os.system('git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions')
    os.system('cp -r zsh/.zshrc /home/$USER/')

menu()
