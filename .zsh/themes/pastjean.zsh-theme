if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

PROMPT='$FG[002]%~ $FG[003]› $FX[reset]'
RPROMPT='$FG[003]%p $(git_prompt_info)$FX[reset]'

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[003]✚git["
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[003]]"
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[007]⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"


# FUnny symbols
# Arrow : ➤
# Arrow : ➜
# Up arrow : ↑
# Down arrow : ↓
# Up-Down arrow : ↕
# x : ✘
# check : ✔
# Lightning : ⚡
# Cloud : ☁
# sun : ✹
# Cloud : ☁
# Star : ✭
# bold + : ✚
# multiplier : ✖
# Small = : ═
# left cursor : ‹
# right cursor : ›
# More symbols to choose from:
# ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ ⚲ ⚳ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♺ ♻ ♼ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
# ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ ⨠ 
# ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟  ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ
