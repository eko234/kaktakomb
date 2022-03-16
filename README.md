# KAKTAKOMB

this plugin allows you to encrypt and decrypt buffers using a password that you can parameterize via the
`kaktakomb_secret` option or if you privde one argument to the functions `encrypt-buffer` or `decrypt-buffer`
they will use it as the password

## NOTE!

for some reason this work with relatively small buffers, it must be something
with me not understanding quite well how openssl works, so if you know better
I would appreciate if you make a pr or open an issue to help us improve this
plugin. :)
