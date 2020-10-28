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
