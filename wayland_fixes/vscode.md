# Visual Studio Code
You have to change the two .desktop files to use the `--ozone-platform-hint=wayland --enable-features=UseWaylandDecorations` flags, passing them in to the vscode executable.

Those are located in `/usr/share/applications/code.desktop` and `/usr/share/applications/code-url-handler.desktop`.

To avoid these being overwritten on update, you can copy the edited files to `~/.local/share/applications`, which will take precedence.