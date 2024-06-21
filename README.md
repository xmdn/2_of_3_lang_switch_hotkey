# 2_of_3_lang_switch_hotkey
This script for AutoHotKey key binder script for Windows 10 you can now switch between two layouts of keyboard language, when you will have third with some bindings

To starting you need to get the project cloned or downloaded in zip.
And continue by this guide

# Do next steps to use this script correctly:

  For checking your language codes do next steps (**if you also using it only for eng & ukr**, and separate from rus hotkey switches, you **DONT DO NEXT STEPS. MOVE TO NEXT STEP "Setting standart Windows 10 layout macros"**):

  Use: `Win + R` -> regedit

  ![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/0f869c2c-2f70-4e8f-8163-5e92993c484b)

  

  Continue moving to:
  `HKEY_CURRENT_USER->Keyboard Layout->Preload`


  ![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/412b664a-be8a-4e66-a6f4-3d216d438567)

  Here you can see your language registry codes which in my case:
  1) 00000409 - English lang (this will be switchable by `Shift + Alt` even as default lang);
  2) 00000419 - Russian lang (this can be switched no matter which lang was before, you will switch to this by `Alt + R`);
  3) 00000422 - Ukranian lang (this will be switchable by `Shift + alt` if we choosed Eng lang);
  
  It is your lang codes, **remember it** (you will see another codes if you DO NOT USED IT WITH English, Ukranian and Russian language layouts).

# Setting standart Windows 10 layout macros
**Move to:**
`Settings->Devices->Typing`


![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/ddbd2904-9915-4573-a0e1-d4d88fbc022f)

Click on: `Advanced keyboard settings`


![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/c0cb4a04-15f1-4b24-a7e1-967a5083f5f6)

Here click on: `Input language hot keys`

You will see window, and here on `Advanced Key Settings` you need to turn off default Between input language switch (which is by default is `Shift + Alt` for changing language).
You need to set up `Ctrl + 0` and `Ctrl + 2` for langs which you want to switch by `Shift + Alt` and which you want to switch with `Alt + R` is `Ctrl + 1`. 

> Apply config for hotkeys.
>
> And move next steps

**If you using another languages** (not Ukraine, English and Russian), you need to change variables in our hotkey code file:

<pre>
  <code>
    <html>
  englishLayout := "00000409"  ; English (United States)
  ukrainianLayout := "00000422"  ; Ukrainian (Ukraine)
    </html>
  </code>
</pre>
**Paste here your two langs registry codes, which should be switchable, like in our case is End and Ukr langs**

	
<pre>
  <code>
    <html>
<head>We have method which takes number in parameters when called. This method will simulated pressing a buttons 
`Ctrl` + Number in params:
</head>
  SetKeyboardLayoutShortcut(shortcut) {
      Send, {Ctrl down}%shortcut%{Ctrl up}
  }
    </html>
  </code>
</pre>

# Running script

### Start lang.exe 



### Or AutoHotKey .ahk config with AutoHotKey program



**WE USING AHK AutoHotKey programm which uses C++ like programm language AutoHotKey for `Microsoft Windows`**

**You can get it on:** https://www.autohotkey.com/

### After installation you should execute our lang.ahk file with AutoHotKey programm 
and you will see in tray running script lang.ahk:

![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/1617a8cc-362e-4749-83d3-22e2e656c4b3)

