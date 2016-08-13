# Fix dropping wifi connection on OS X

This tries to fix dropping wifi connection by removing network settings, as discussed here http://apple.stackexchange.com/questions/195359/wifi-keeps-dropping-macbook-pro-13in-retina-early-2015

Install:
```
git clone https://github.com/NikkiLoveGod/fix-dropping-wifi-osx.git
cd fix-dropping-wifi-osx
chmod ug+x fix-dropping-wifi-osx.sh
```

Run:
```
cd fix-dropping-wifi-osx && ./fix-dropping-wifi-osx.sh
```

## THIS WILL REQUIRE SUDO-PRIVILEDGES AND WILL REBOOT YOUR MACHINE!
### This "Works on my machine", and deletes system configuration files. You are warned :)