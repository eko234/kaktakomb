declare-option str kaktakomb_secret NOT_SO_SUPER_SECRET

define-command encrypt-buffer -override %{
  execute-keys "<esc>%%"
  execute-keys %sh{
    encrypted=$(echo "$kak_selection" | openssl enc -e -aes-256-cbc -a -salt -pass "pass:$kak_opt_kaktakomb_secret" 2>/dev/null | xargs echo -n)
    printf "d\i$encrypted<esc>%%"
  }
}

define-command decrypt-buffer -override %{
  execute-keys "<esc>%%"
  execute-keys %sh{
    printf "| echo $kak_selection | openssl aes-256-cbc -d -a -pass pass:$kak_opt_kaktakomb_secret -base64<ret>"
  }
}

