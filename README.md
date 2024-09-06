# Time Aid
This AHK script was created by Rosie A-Hill, intending to assist in their problem with time-blindness. If you have any questions feel free to reach them on Discord (Rosier) or [GitHub](https://github.com/roseahill).

## Usage Guide
You will need to install [AutoHotKey 2.0](https://www.autohotkey.com/). To run the script you can either double click the script file or set it to autorun on startup. You can also change the sounds it plays, though it is recommended to only change it to sounds you will recognize and not tune out.

### Adding New Sounds
To make a new sound set, create a new folder inside of the `sounds` folder with the three sound files inside. You can name the folder anything you'd like for now, however the hour, half, and quarter sounds must be named `hour.mp3`, `half.mp3`, and `quarter.mp3`. If you would like to use other file types you will need to edit the script.

### Changing to a Sound Set
To change to a sound set in the sounds folder, just rename the `current` folder to something descriptive, and rename the folder you would like to use as `current`.

### Autorun on Startup
To have this script automatically start when your computer turns on, you will need to follow these steps for Windows:

1. Select and right click the script file and select `Create Shortcut`. On Windows 11 you may have to click `Show More Options` first.
2. Select and right click the new shortcut and click `Cut`.
3. Press the Windows key and search for the built in program `Run`.
4. In Run type `shell:startup` and press enter. This should open a folder window.
5. Paste the shortcut into this folder. Now this should run when your computer starts.


### Configuration
If you would like to edit the script to change any settings, you will need a text editor. Most simple text editors will do (Notepad, Notepad++, etc), as well as any code editors (Visual Studio Code, Sublime, etc).

To edit the times of day at which the program starts and ends, you will need to edit the values after `:=` only on the lines of the script that look like this:
```ahk
; Feel free to edit the next few options
StartTime := 800      ; 0-2300
EndTime := 2400       ; 1-2400
HasDisable := True    ; True or False
```

The `StartTime` and `EndTime` values are in 24 hour format, so you can enter any time from 0-2400, where, if you wanted to say midnight, 2400 is prefered for `EndTime` and 0 is prefered for `StartTime`.

`HasDisable` determines if you're able to quit out of the program by pressing the keybinding of `Windows + Shift + D`. If you set this to false, you will need to quit the program from the toolbar manually.