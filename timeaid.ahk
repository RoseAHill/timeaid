﻿#Requires AutoHotkey v2.0
; Written by Rosie A-Hill
; RoseAHill on GitHub

; Feel free to edit the next few options
StartTime := 700      ; 0-2300
EndTime := 2300       ; 1-2400
HasDisable := True    ; True or False

; Don't edit the following
DingHour := 00
Ding15 := 15
Ding30 := 30
Ding45 := 45
HourSoundPath := ".\sounds\current\hour.mp3"
HalfHourSoundPath := ".\sounds\current\half.mp3"
QuarterHourSoundPath := ".\sounds\current\quarter.mp3"

; Chooses the correct sound to play
PlayCorrectSound(&ticker) {
    if (ticker = DingHour) {
        SoundPlay HourSoundPath
    } else if (ticker = Ding30) {
        SoundPlay HalfHourSoundPath
    } else if ((ticker = Ding15) or ticker = Ding45) {
        SoundPlay QuarterHourSoundPath
    }
}

; If the start time is in the morning and the end time is at night before or at midnight
if (StartTime < EndTime) {
    loop {
        ticker := A_Min
        current_time := A_Hour . A_Min
        if (((current_time > StartTime) and (current_time < EndTime)) and ((ticker = DingHour) or (ticker = Ding15) or
            (ticker = Ding30) or (ticker = Ding45))) {
            PlayCorrectSound(&ticker)
            while ((ticker = DingHour) or (ticker = Ding30) or (ticker = Ding15) or (ticker = Ding45)) {
                Sleep 90000
                ticker := A_Min
            }
        } else {
            Sleep 1000
        }
    }
}
; If the start time is later than the end time, which means the end time will be in the early hours of the morning (1am onward)
else {
    loop {
        ticker := A_Min
        current_time := A_Hour . A_Min
        if (((current_time < StartTime) and (current_time > EndTime)) and ((ticker = DingHour) or (ticker = Ding15) or
            (ticker = Ding30) or (ticker = Ding45))) {
            PlayCorrectSound(&ticker)
            while ((ticker = DingHour) or (ticker = Ding30) or (ticker = Ding15) or (ticker = Ding45)) {
                Sleep 90000
                ticker := A_Min
            }
        } else {
            Sleep 1000
        }
    }
}

; If the user wants to have a hotkey to turn off the script
if (HasDisable) {
    #+d:: ExitApp
}
