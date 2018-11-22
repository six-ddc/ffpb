# ------------------------------------------------------------------------------
# Description
# -----------
#
# ffpb will be inserted before the command
#
# ------------------------------------------------------------------------------
# Install
# -------
#
# mkdir -p ~/.oh-my-zsh/custom/plugins/zsh-ffpb
# mv zsh-ffpb.plugin.zsh ~/.oh-my-zsh/custom/plugins/zsh-ffpb
# echo "plugins+=(zsh-ffpb)" >> ~/.zshrc
#
# ------------------------------------------------------------------------------
# Authors
# -------
#
# * dongcheng.du <dongcheng.du@gmail.com>
#
# ------------------------------------------------------------------------------

ffpb-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == ffpb\ * ]]; then
        LBUFFER="${LBUFFER#ffpb\ }"
    else
        LBUFFER="ffpb $LBUFFER"
    fi
}
zle -N ffpb-command-line
# Defined shortcut keys: [Esc] [p]
bindkey -M emacs "\ep" ffpb-command-line
