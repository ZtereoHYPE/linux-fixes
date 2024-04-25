# Signal Messenger
The signal developer were nice enough to make a little environment variable that enables wayland ozone flags.

Simply use Flatseal (or any flatpak settings modifier of your choice) and set the following environment variable:
```
SIGNAL_USE_WAYLAND=1
```
Make sure to also have the wayland socket permissions turned on (should be by default)!

### Signal will start in background / tray for some reason, but opening that by clicking on the tray / background apps icon will work.
