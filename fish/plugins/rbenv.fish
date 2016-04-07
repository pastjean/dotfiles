# rbenv
prepend_to_path "$HOME/.rbenv/bin"
status --is-interactive; and . (rbenv init -|psub)
