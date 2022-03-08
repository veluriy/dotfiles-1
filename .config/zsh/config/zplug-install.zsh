if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
