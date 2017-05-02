function __fish_hg_prompt_pa
    # If hg isn't installed, there's nothing we can do
    # Return 1 so the calling prompt can deal with it
    if not command -sq hg
        return 1
    end

    # Find an hg directory above $PWD
    # without calling `hg root` because that's too slow
    set -l root
    set -l dir $PWD
    while test $dir != "/"
        if test -f $dir'/.hg/dirstate'
            set root $dir"/.hg"
            break
        end
        # Go up one directory
        set -l dir (string replace -r '[^/]*/?$' '' $dir)
    end

    if test -z "$root"
        return 0
    end


end