# Setup DNSmasq

1. Make sure `conf-dir=/usr/local/etc/dnsmasq.d,*.conf` is enabled in the file `/usr/local/etc/dnsmasq.conf`.

2. After that create a file `/usr/local/etc/dnsmasq.d/development.conf` and add the following to it: `address=/.test/127.0.0.1`

3. After that, create a resolver: `sudo mkdir /etc/resolver`, and create a file inside: `sudo touch /etc/resolver/test` and add the following to it: `nameserver 127.0.0.1`

4. Make sure to restart dnsmasq for the changes to take place `brew services restart dnsmasq`

5. Test the dnsmasq conf with `dig foobar.test @127.0.0.1` and test the resolver is setup with `scutil --dns` (Notice: it might take a while for the dns resolver to be recoqnized)

Your Mac is now ready to use!

> Note: you can use a different location than `~/.dotfiles` if you want. Just make sure you also update the reference in the [`.zshrc`](./.zshrc) file.
