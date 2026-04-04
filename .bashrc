# .bashrc

export TERM=xterm-256color
export RUSTICL_ENABLE=radeonsi
export CLOVER_DISABLE=1

export XDG_DATA_DIRS="$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

# # ─── Color codes (from your theme) ────────────────────────────────────────────
# RESET="\[\e[0m\]"
# FG="\[\e[38;2;228;228;239m\]"  # fg
# FG1="\[\e[38;2;244;244;255m\]" # fg1
# FG2="\[\e[38;2;245;245;245m\]" # fg2
# WHITE="\[\e[38;2;255;255;255m\]"
# BLACK="\[\e[38;2;0;0;0m\]"
# BG1="\[\e[48;2;16;16;16m\]"
# BG="\[\e[48;2;24;24;24m\]"
# BG2="\[\e[48;2;40;40;40m\]"
# BG3="\[\e[48;2;69;61;65m\]"
# BG4="\[\e[48;2;72;72;72m\]"
# BG5="\[\e[48;2;82;73;78m\]"
# RED1="\[\e[38;2;199;60;63m\]"
# RED="\[\e[38;2;244;56;65m\]"
# RED2="\[\e[38;2;255;79;88m\]"
# GREEN="\[\e[38;2;115;201;54m\]"
# YELLOW="\[\e[38;2;255;221;51m\]"
# BROWN="\[\e[38;2;204;140;60m\]"
# QUARTZ="\[\e[38;2;149;169;159m\]"
# NIAGARA2="\[\e[38;2;48;53;64m\]"
# NIAGARA1="\[\e[38;2;86;95;115m\]"
# NIAGARA="\[\e[38;2;150;166;200m\]"
# WISTERIA="\[\e[38;2;158;149;199m\]"

# # ─── Exit code function ──────────────────────────────────────────────────────
# last_exit_code() {
# 	local code=$?
# 	if [ "$code" -eq 0 ]; then
# 		echo -n "${QUARTZ}0${RESET}"
# 	else
# 		echo -n "${RED}${code}${RESET}"
# 	fi
# }

# # ─── Git branch parser ───────────────────────────────────────────────────────
# parse_git_branch() {
# 	git rev-parse --is-inside-work-tree &>/dev/null || return
# 	git branch 2>/dev/null | sed -n '/\* /s///p' | sed 's/^/(/' | sed 's/$/)/'
# }

# # ─── Prompt string (PS1) ──────────────────────────────────────────────────────
# PS1="\n""\
# [${NIAGARA}\t${RESET}]-""\
# [${WISTERIA}\u${RESET}]-""\
# [${GREEN}chitu${RESET}]-""\
# [${YELLOW}\w${RESET}]-""\
# [${QUARTZ}bash${RESET}]-""\
# \$(parse_git_branch)\n""\
# → "

# ─── Color codes (Rosé Pine) ────────────────────────────────────────────────
RESET="\[\e[0m\]"
FG="\[\e[38;2;224;222;244m\]"  # text
FG1="\[\e[38;2;235;233;252m\]" # lighter text
FG2="\[\e[38;2;244;237;255m\]" # lightest text
WHITE="\[\e[38;2;255;255;255m\]"
BLACK="\[\e[38;2;25;23;36m\]"   # base
BG1="\[\e[48;2;25;23;36m\]"     # base
BG="\[\e[48;2;31;29;46m\]"      # surface
BG2="\[\e[48;2;38;35;58m\]"     # overlay
BG3="\[\e[48;2;49;45;72m\]"     # muted overlay
BG4="\[\e[48;2;62;57;91m\]"     # darker muted
BG5="\[\e[48;2;75;69;113m\]"    # deepest muted
RED1="\[\e[38;2;235;111;146m\]" # love
RED="\[\e[38;2;235;111;146m\]"
RED2="\[\e[38;2;246;115;157m\]"
GREEN="\[\e[38;2;49;116;143m\]"   # foam
YELLOW="\[\e[38;2;246;193;119m\]" # gold
BROWN="\[\e[38;2;215;130;126m\]"  # rose
QUARTZ="\[\e[38;2;144;122;169m\]" # iris
NIAGARA2="\[\e[38;2;64;61;82m\]"  # low contrast
NIAGARA1="\[\e[38;2;110;106;134m\]"
NIAGARA="\[\e[38;2;156;207;216m\]"  # foam-light
WISTERIA="\[\e[38;2;196;167;231m\]" # iris-light

# ─── Exit code function ──────────────────────────────────────────────────────
last_exit_code() {
	local code=$?
	if [ "$code" -eq 0 ]; then
		echo -n "${QUARTZ}0${RESET}"
	else
		echo -n "${RED}${code}${RESET}"
	fi
}

# ─── Git branch parser ───────────────────────────────────────────────────────
parse_git_branch() {
	git rev-parse --is-inside-work-tree &>/dev/null || return
	git branch 2>/dev/null | sed -n '/\* /s///p' | sed 's/^/(/' | sed 's/$/)/'
}

# ─── Prompt string (PS1) ─────────────────────────────────────────────────────
PS1="\n""\
[${NIAGARA}\t${RESET}]-""\
[${WISTERIA}\u${RESET}]-""\
[${GREEN}chitu${RESET}]-""\
[${YELLOW}\w${RESET}]-""\
[${QUARTZ}bash${RESET}]-""\
\$(parse_git_branch)\n""\
→ "
# vim motion in bash commands
set -o vi
set editing-mode vi
set keymap vi-command
alias nvim="$HOME/Applications/nvim/nvim_0.11.7.appimage"

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \. /usr/share/bash-completion/bash_completion

alias ls='ls --color=auto'
unset rc

bind 'set enable-bracketed-paste on'
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export RUSTICL_ENABLE=radeonsi
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
export TERM=xterm-256color
export PATH="$HOME/.npm-global/bin:$PATH"
