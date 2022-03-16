# KAKTAKOMB

this plugin allows you to encrypt and decrypt buffers using a password that you can parameterize via the
`kaktakomb_secret` option or if you privde one argument to the functions `encrypt-buffer` or `decrypt-buffer`
they will use it as the password, if you have lets say, some passwords stored in files you could encryt them and read
them in kakoune using this plugin.


## DEPENDENCIES
  - openssl

## SUGGESTED CONFIG

```kakscript
plug "eko234/kaktakomb" config %{
  set global kaktakomb_secret YOUR_VERY_SECRET_PASSWORD
}
```
