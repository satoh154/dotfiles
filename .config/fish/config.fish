set -x LC_ALL en_US.utf8
set -x LANG en_US.utf8
set -x LIBGL_ALWAYS_INDIRECT 1 $LIBGL_ALWAYS_INDIRECT
set -x DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0 $DISPLAY
set -x PATH /home/satoh/anaconda3/bin $PATH
set -x PATH /home/satoh/.cargo/bin $PATH
set -g theme_display_user no 
set -g theme_display_hostname no
alias nvim='/home/satoh/.local/squashfs-root/usr/bin/nvim'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/satoh/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/satoh/google-cloud-sdk/path.fish.inc' ]; . '/home/satoh/google-cloud-sdk/path.fish.inc'; end
