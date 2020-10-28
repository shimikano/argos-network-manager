# Argos NetworkManager Plugin

Until WireGuard is integrated in the NetworkManager UI, this can be used to toggle a NetworkManager connection using the [Argos](https://github.com/p-e-w/argos) Gnome Shell Extension.

## Getting Started

"Install" the helper script:

```bash
$ cd ~/.config/argos
$ git clone git@github.com:shimikano/argos-network-manager.git
```

Use it for a connection `MyConnection`, e.g. in a file called `~/.config/argos/MyConnection.5s.sh`:

```bash
#!/usr/bin/env bash

echo "$(~/.config/argos/argos-network-manager/argos-network-manager-helper.sh MyConnection)"
```

## Argos and Gnome 3.36

Install Argos as usual, then replace the `menuitem.js` file:

```bash
cd ~/.local/share/gnome-shell/extensions/argos@pew.worldwidemann.com
wget --output-document=menuitem.js https://github.com/rammie/argos/blob/gnome-3.36/argos%40pew.worldwidemann.com/menuitem.js
```
