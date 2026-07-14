function awsp --description "Set AWS profile from ~/.aws/config"
    set -l cfg "$HOME/.aws/config"
    if not test -f $cfg
        echo "awsp: missing $cfg" 1>&2
        return 1
    end

    set -l profiles
    for line in (string match -r '^\[profile [^\]]+\]$' < $cfg)
        set -a profiles (string replace -r '^\[profile ([^\]]+)\]$' '$1' -- $line)
    end

    if test (count $argv) -eq 0
        if type -q fzf
            set -l picked (printf "%s\n" $profiles | fzf --prompt='AWS profile> ')
            if test -z "$picked"
                return 0
            end
            set argv $picked
        else
            if set -q AWS_PROFILE
                echo "current: $AWS_PROFILE"
            end
            echo "usage: awsp <profile>"
            printf "%s\n" $profiles
            return 0
        end
    end

    set -l target $argv[1]
    if not contains -- $target $profiles
        echo "profile not found: $target" 1>&2
        return 1
    end

    set -gx AWS_PROFILE $target
    set -gx AWS_DEFAULT_PROFILE $target
    echo "AWS profile set: $target"
end
