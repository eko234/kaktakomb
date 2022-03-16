declare-option str kaktakomb_secret NOT_SO_SUPER_SECRET

define-command encrypt-buffer -override -params 0..1 %{
  execute-keys "<esc>%%"
  execute-keys %sh{
    [ -z "$1" ] && pass="$kak_opt_kaktakomb_secret" || pass="$1"
    printf "| openssl enc -e -aes-256-cbc -a -salt -pass pass:$pass 2>/dev/null<ret>"
  } 
}

define-command decrypt-buffer -override -params 0..1 %{
  execute-keys "<esc>%%"
  execute-keys %sh{
    [ -z "$1" ] && pass="$kak_opt_kaktakomb_secret" || pass="$1"
    printf "| openssl aes-256-cbc -d -a -pass pass:$pass -base64<ret>"
  }
}
