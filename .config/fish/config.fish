fish_vi_key_bindings
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_display_hg no
set -g theme_color_scheme gruvbox

# disable defauly python virtualenv prompt, for compatibility with omf themes
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -x EDITOR nvim

# aliases
alias vim="nvim"

# switch between headphones and speakers
abbr -a -g headphones sudo sed -i 's/\"speakers\"/\"headphones\"/g' /etc/asound.conf
abbr -a -g speakers sudo sed -i 's/\"headphones\"/\"speakers\"/g' /etc/asound.conf

# switch between light and dark mode
# abbr -a -g light "sed -i 's/colors: \*gruvboxdark/colors: *gruvboxlight/g' /home/richard/.config/alacritty/alacritty.yml"
# abbr -a -g dark "sed -i 's/colors: \*gruvboxlight/colors: *gruvboxdark/g' /home/richard/.config/alacritty/alacritty.yml"
abbr -a -g light "kitty @set-colors --all --configured /home/richard/.config/kitty/kitty-themes/themes/gruvbox_light.conf"
abbr -a -g dark "kitty @set-colors --all --configured /home/richard/.config/kitty/kitty-themes/themes/gruvbox_dark.conf"


# edit path
set -g PATH ~/bin $PATH
set -g PATH ~/go/bin $PATH
