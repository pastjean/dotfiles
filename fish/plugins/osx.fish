function pfd
  echo '
   tell application "Finder"
     return POSIX path of (target of window 1 as alias)
   end tell
  ' | osascript - ^/dev/null

end

function cdf
  cd (pfd)
end

function man-preview
  man -t "$argv" | open -f -a Preview
end

