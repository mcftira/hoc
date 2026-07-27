# bash completion for hoc — magyar OpenShift CLI
# Telepítés: source hoc-completion.bash
#        vagy: cp hoc-completion.bash /etc/bash_completion.d/hoc

_hoc() {
  local cur
  cur="${COMP_WORDS[COMP_CWORD]}"

  local cmds="podok szolgáltatások telepítések csomópontok projektek események mindent \
kivagyok belépek kilépek projekt napló logok leírom törlöm alkalmazom futtatom \
benezek méretezem kigurítom átfurakodom csúcs magyarázd szerkesztem címkézem \
megjegyzem ürítem lezárom feloldom bogarászom állapot verzió segítség"

  local nouns="podok szolgáltatások telepítések csomópontok események"

  if [ "$COMP_CWORD" -eq 1 ]; then
    # shellcheck disable=SC2207
    COMPREPLY=($(compgen -W "$cmds" -- "$cur"))
  elif [ "$COMP_CWORD" -eq 2 ]; then
    # shellcheck disable=SC2207
    COMPREPLY=($(compgen -W "$nouns" -- "$cur"))
  fi
}

complete -F _hoc hoc
