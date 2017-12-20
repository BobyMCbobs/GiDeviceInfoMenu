GiDeviceInfoMenu is a simple GUI for the ideviceinfo tool of libimobiledevice displayed via Bitbar for macOS, or Argos —- an extension for the GNOME desktop, or KArgos -- a KDE plasmoid.

GiDeviceInfoMenu has an option for the refresh rate — if want to change the refresh rate check the file name’s .[amount of seconds]s.sh
e.g. the default is 2s (two seconds) —- thus iDeviceInfoMenu.2s.sh

To Install:

Via apt (precompiled, GNU/Linux) (1a):
1) 'sudo apt install libplist-dev libusbmuxd-dev libimobiledevice-utils'

Via Homebrew (precompiled, macOS) (1b):
1) Install Homebrew: '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”'
2) Install dependencies/prerequisites: 'brew cast install osxfuse'
3) Install libimobiledevice: 'brew install -s --HEAD libimobiledevice ideviceinstaller'

For Linux users on GNOME (2a):
1) Install Argos from https://extensions.gnome.org/extension/1176/argos/   
  i) Install libnotify-bin (if it's not installed by default)
2) Place GiDeviceInfoMeu.2s.sh in ~/.config/argos/
3) Wait for refresh.
4) Profit.

For macOS (2b):
1) Get BitBar from https://getbitbar.com — put it in applications folder
2) Launch BitBar and select a folder with which the extensions should go.
3) Place GiDeviceInfoMeu.2s.sh in the folder chosen in step 2.
4) Refresh extensions.
5) Profit.

NOTES:
Phonetics: G-i-Device-Info-Menu

Bonus:
(*) Works in CLI

Issues:
- If you don’t have execution rights, ‘chmod +x GiDeviceInfoMenu.2s.sh’
- If ideviceinfo doesn’t run on macOS —- run: ‘sudo cp /usr/local/Cellar/libimobiledevice/*/bin/ideviceinfo /usr/bin/‘
