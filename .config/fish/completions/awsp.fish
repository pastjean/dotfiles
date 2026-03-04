function __awsp_profiles
    set -l cfg "$HOME/.aws/config"
    if not test -f $cfg
        return
    end

    for line in (string match -r '^\[profile [^\]]+\]$' < $cfg)
        string replace -r '^\[profile ([^\]]+)\]$' '$1' -- $line
    end
end

complete -c awsp -f -a "(__awsp_profiles)" -d "AWS profile"
