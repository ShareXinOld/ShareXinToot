# ShareXinToot  

On Linux (ShareXin screenshot, replace Tweet with Toot in your head)  
![On Linux](https://raw.githubusercontent.com/ShareXin/ShareXin/master/twitter-2016-10-08-10_07_602_PM.png)

#### Requirements
python3  
[toot](https://github.com/ihabunek/toot)  
PyQt5  
gnome-screenshot (on Linux)  
feh (for Selection)  

#### Features
* Uploads to Mastodon
* Notification via libnotify
* Works with Wayland (On Gnome only) and X11 (On everything since the 90s)
* Compatible with Pyinstaller

#### Installation
1. `git clone https://github.com/ShareXin/ShareXinToot`
2. Login to Mastodon via Toot
3. Attach the scripts to a keyboard shortcut
4. Done!

### Changelog
#### [0.0.1] - 2017-07-10
#### Added
- Repo

### Pyinstaller
Pyinstaller allows you to turn Python scripts into executables that can be run even without Python installed.  
You can even turn them into Windows executables and macOS apps.  

#### Steps for using Pyinstaller
1. `pip3 install pyinstaller` as sudo/root
2. `pyinstaller (optional -F flag for one file instead of a folder) [file.py]`
3. Done.

### Cython
Pyinstaller currently doesn't work with Python3.6, so we must resort to using Cython, which creates a C source file that gcc compiles. Not sure if this works with macOS, but it definitely doesn't work on Windows, unless you can get gcc working.  

#### Steps for using Cython
1. `pip3 install cython` as sudo/root
2. `cp Your_Python.py Your_Python.pyx`
3. `cython Your_Python.pyx --embed`
4. `gcc -Os -I /usr/include/python3.6m -o Your_Python Your_Python.c -lpython3.6m -lpthread -lm -lutil -ldl`
5. Done?
