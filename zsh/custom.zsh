# lang
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# Completion
autoload -U compinit
compinit

autoload -Uz zmv

# color
autoload colors
colors

# define color
DEFAULT=$"%{\e[0;0m%}"
RESET="%{${reset_color}%}"
GREEN="%{${fg[green]}%}"
BLUE="%{${fg[blue]}%}"
RED="%{${fg[red]}%}"
CYAN="%{${fg[cyan]}%}"
YELLOW="%{${fg[yellow]}%}"
MAGENTA="%{${fg[magenta]}%}"
WHITE="%{${fg[white]}%}"

# prompt
PROMPT="${RESET}${YELLOW}%B#%b${RESET} "

VCS_PROMPT="%1(v|%F{green} %1v%f|)"
DIR_PROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}"
RPROMPT="%{${fg[green]}%}$VCS_PROMPT $DIR_PROMPT%{${reset_color}"

SPROMPT="${RESET}${WHITE}zsh: %r is correct? [yes/no/a/e]:${RESET}"

# sudo用のpathを設定
typeset -xT SUDO_PATH sudo_path
typeset -U sudo_path
sudo_path=({/usr/local,/usr,}/sbin(N-/))

## pathを設定
path=(~/bin(N-/) /usr/local/bin(N-/) ${path})

# コマンドのスペルチェックをする
setopt correct

# コマンドライン全てのスペルチェックをする
setopt correct_all

# PCRE 互換の正規表現を使う
setopt re_match_pcre

# 補完キー（Tab,  Ctrl+I) を連打するだけで順に補完候補を自動で補完する
setopt auto_menu

# 補完候補を詰めて表示する
setopt list_packed

# beepを鳴らさないようにする
setopt nolistbeep

# ディレクトリ名を入力するだけで移動
setopt auto_cd

# cd でTabを押すとdir list を表示
setopt auto_pushd

# 補完候補が複数ある時に、一覧表示する
setopt auto_list

# Emacsライクキーバインド設定
bindkey -e

# 重複パスを登録しない
typeset -U path cdpath fpath manpath








