i3
===

## Dependencies on Debian 10
`xcompmgr`: composite manager for shadows and transparency  
`imagemagick`: screenshot creator  
`xclip`: clipboard manager for sending screenshot to clipboard  
`pulseaudio-utils`: Sound system for POSTIX OSes
`qlipper`: cliboard manager
`terminator`: My lovly terminal

```bash
sudo apt install i3 xorg suckless-tools slim imagemagick \
                 qlipper pulseaudio-utils terminator galculator
sudo cp slim/slim.conf /etc/slim/
```

## Setup
`feh-rand`: same as `feh` but use a url to fetch random wallpapers. copy it to system `PATH` (/usr/local/bin).  
`i3lock-rand`: lock i3 with random images from a path. copy it to system `PATH`.  
`i3config`: my personal i3 config file. copy it to `~/.config/i3/config` (Debian) or `~/.i3/config` (Ubuntu).  
`volume`: volume control script. copy it to `/usr/local/bin`.

custom shortcuts:
* **Super + Z**: go to workspace 16 (my personal workspace)
* **Super + PrintScreen**: create a screenshot and save it to `Pictures/date.jpg`
* **Super + Shift + PrintScreen**: create a screenshot and send it to clipboard
* **Super + Esc**: focus on child
* **Super + Space**: change keyboard layout  
`i3status.conf`: custom i3 bar status. this file auto loaded if you copy it to `~/.i3status.conf`  
`Xresources`: some custom config for better font rendering. copy it to `~/.Xresources` and restart your X session.  
`xorg.conf.d`: this directory contains some config files for device input management like synaptic touchpad manager (tap to click, two finger tap to right click) and etc. copy this folder to `/etc/X11/` and restart your X session.  


## Keyboard layout

Edit file `/etc/default/keyboard`:

    # KEYBOARD CONFIGURATION FILE

    # Consult the keyboard(5) manual page.

    XKBMODEL="pc105"
    XKBLAYOUT="us,ir"
    XKBVARIANT=""
    XKBOPTIONS="grp:alt_shift_toggle"

    BACKSPACE="guess"

And then, to deploy config just run

```bash
udevadm trigger --subsystem-match=input --action=change 
```

## Sound Setting

https://askubuntu.com/a/14083/25025

## i3lock with clock

To isntall i3lock with showing clock:

https://github.com/Lixxia/i3lock
