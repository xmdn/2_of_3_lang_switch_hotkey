; Define language codes as variables
englishLayout := "00000409"  ; English (United States)
ukrainianLayout := "00000422"  ; Ukrainian (Ukraine)


; Function to set the keyboard layout using a key combination
SetKeyboardLayoutShortcut(shortcut) {
    Send, {Ctrl down}%shortcut%{Ctrl up}
}

; Switch between languages using Shift + Alt.
; With two scenarios: 
	; 1) Shift pushed, after that Alt;
	; 2) Revesed first Alt pushed and Shift after that;
LShift & LAlt::
LAlt & LShift::
    currentLayout := GetKeyboardLayout()  ; Get the current input language

    if (currentLayout = englishLayout) {  ; If the current language is English
        SetKeyboardLayoutShortcut("2")  ; Ctrl + 2 (Ukrainian layout)
        ; MsgBox, Current input language: not default first english
    } else if (currentLayout = ukrainianLayout) {
        SetKeyboardLayoutShortcut("0")  ; Ctrl + 0 (English layout)
	; MsgBox, Current input language: not default second Ukraine
    } else {
        SetKeyboardLayoutShortcut("0")  ; Ctrl + 0 (English layout) DEFAULT
	; MsgBox, Current input language: default English
    }
return


; Function to get the current keyboard layout
GetKeyboardLayout() {
    hwnd := WinExist("A")
    threadId := DllCall("GetWindowThreadProcessId", "Ptr", hwnd, "UInt", 0)
    langId := DllCall("GetKeyboardLayout", "UInt", threadId, "Ptr")
    return Format("{:08x}", langId & 0xFFFF)
}

; Switch to Russian using Alt + R
!r::SetKeyboardLayoutShortcut("1")  ; Ctrl + 1 (Russian layout)