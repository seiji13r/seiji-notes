# Uninstall Virtual Box from MacOS High Sierra

1. Delete Vm from Applications
2. Remove all the Following files
   
~/Library/VirtualBox

~/Library/Preferences/org.VirtualBox.app.VirtualBox.plist

~/Library/Saved Application State/org.VirtualBox.app.VirtualBox.SavedState

~/Library/LaunchAgents/org.virtualbox.vboxwebsrv.plist


```bash
rm -rf ~/Library/VirtualBox
rm ~/Library/Preferences/org.VirtualBox.app.VirtualBox.plist
rm -rf "~/Library/Saved Application State/org.virtualBox.app.VirtualBox.SavedState"
rm ~/Library/LaunchAgents/org.virtualbox.vboxwebsrv.plist
```

[Reference](https://nektony.com/how-to/uninstall-virtualbox-on-mac)