function explain {
  local open_cmd
  if [[ $(uname -s) == 'Darwin' ]]; then
    open_cmd='open'
  else
    open_cmd='xdg-open'
  fi

  # base url with first command already injected
  # $ explain tar
  #   => http://explainshel.com/explain/tar?args=
  url="http://explainshell.com/explain/$1?args="
  
  # removes $1 (tar) from arguments ($@)
  shift;
  
  # iterates over remaining args and adds builds the rest of the url
  for i in "$@"; do
   url=$url"$i""+"
  done
  
  # opens url in browser
  echo "Opening explainshell"
  $open_cmd $url
}

alias exp='explain'