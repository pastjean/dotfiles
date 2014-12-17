for cli templates: https://bitbucket.org/sjl/mercurial-cli-templates/src

Then this should be added to hgrc or localhgrc with the dotfiles places correctly placed

    [alias]
    # Datelog: short, pretty hg log with dates.
    dlog = log --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.dlog
    _ = dlog -l15
    __ = _ -l100000000
    o_ = outgoing -n --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.dlog
    i_ = incoming -n --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.dlog

    # Shortlog: short, pretty hg log.
    slog = log --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.slog
    . = slog -l15
    .. = . -l100000000
    o. = outgoing -n --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.slog
    i. = incoming -n --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.slog

    # Short graphlog: short, pretty hg log with a graph.
    sglog = glog --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.sglog
    , = sglog -l7
    ,, = , -l100000000
    o, = outgoing --graph --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.sglog
    i, = incoming --graph --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.sglog

    # hg n .     -- show a summary of rev . without diff.
    # hg show .  -- show a summary of rev . with diff.
    # hg sl .    -- show a summary of rev . with diff, piped to less
    nlog = log --style=$HOME/lib/dotfiles/mercurial/templates/map-cmdline.nlog
    n = nlog -vr
    show = nlog --color=always -vpr
    sl = !"$HG" nlog --color=always -vpr $@ | less -R

    # Simple glog command that doesn't look bad and doesn't require my CLI templates.
    gl = glog -l10 --template='\033[0;33m{rev}\033[0m {desc|firstline|strip} \033[0;35m{branches}\033[0m \033[0;33m{tags}\033[0m\n\033[1;30m({date|age} by {author|person})\033[0m\n\n'
