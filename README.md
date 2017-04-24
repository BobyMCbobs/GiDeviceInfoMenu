iDeviceInfoMenu is a simple GUI for the ideviceinfo tool of libimobiledevice displayed via Bitbar for macOS, or Argosm —- and extension for the GNOME desktop.

iDeviceInfoMenu has an option for the refresh rate — if want to change the refresh rate check the file name’s .[amount of seconds]s.sh
e.g. the default is 2s (two seconds) —- thus iDeviceInfoMenu.2s.sh

To Install:
Clone https://github.com/libimobiledevice/libimobiledevice
Make, and build it. Then make install.
Install note: if you’re using macOS you can use home-brew to make it heaps easier!
1) Get homebrew via: ‘ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)” ’
2) Get a prerequisite: ‘ brew cast install osxfuse ’
3) Install libimobiledevice: ‘ brew install -s --HEAD libimobiledevice ideviceinstaller ’

For macOS:
1) Get BitBar from https://getbitbar.com — put it in applications folder
2) Launch BitBar and select a folder with which the extensions should go.
3) Place iDeviceInfoMenu.2s.sh in the folder chosen in step 2.
4) Refresh extensions.
5) Profit.

For Linux users on GNOME:
1) Install Argos from https://extensions.gnome.org/extension/1176/argos/
2) Place iDeviceInfoMenu.2s.sh in ~/.config/argos/
3) Wait for refresh.
4) Profit.


Issues:
- If you don’t have execution rights, ‘chmod +x iDeviceInfoMenu.2s.sh’
- If ideviceinfo doesn’t run on macOS —- run: ‘sudo cp /usr/local/Cellar/libimobiledevice/*/bin/ideviceinfo /usr/bin/‘