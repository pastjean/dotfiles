if test -e (which fasd)
  function -e fish_preexec _run_fasd
    fasd --proc (fasd --sanitize "$argv") > "/dev/null" 2>&1
  end

  function z
    cd (fasd -d -l -1 "$argv")
  end
else
  echo "🍒  Please install 'fasd' first!"
end
