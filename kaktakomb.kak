define-command encrypt-buffer -override %{
  execute-keys "<esc>%%"
  execute-keys %sh{
    encrypted=$(echo "$kak_selection" | openssl enc -e -aes-256-cbc -a -salt -pass pass:SUPERSECRET 2>/dev/null | xargs echo -n)
    printf "d\i$encrypted<esc>%%"
  }
}

define-command decrypt-buffer -override %{
  execute-keys "<esc>%%"
  execute-keys %sh{
    printf "| echo $kak_selection | openssl aes-256-cbc -d -a -pass pass:SUPERSECRET -base64<ret>"
  }
}
