# 2_of_3_lang_switch_hotkey
This script for AutoHotKey key binder script for Windows 10 you can now switch between two layouts of keyboard language, when you will have third with some bindings

First steps:
1) get the project cloned or download zip;

2) Do next steps to use this script correctly:

  For checking your language codes do next steps (if you also using it only for eng & ukr, and separate from rus hotkey switches, you DO NO NEED TO DO NEXT STEPS):
  Move to: Win + r -> regedit
  ![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/0f869c2c-2f70-4e8f-8163-5e92993c484b)

  Continue moving to: HKEY_CURRENT_USER->Keyboard Layout->Preload
  ![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/412b664a-be8a-4e66-a6f4-3d216d438567)

  Here you can see your language registry codes which in my case:
  1) 00000409 - English lang (this will be switchable by "shift + alt" even as default lang);
  2) 00000419 - Russian lang (this can be switched no matter which lang was before, you will switch to this by "Alt + R");
  3) 00000422 - Ukranian lang (this will be switchable by "shift + alt" if we choosed Eng lang);
  
  It is your lang codes, remember it (you will see another codes if you DO NOT USED IT WITH English, Ukranian and Russian language layouts).

Move to:
Settings->Devices->Typing
![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/ddbd2904-9915-4573-a0e1-d4d88fbc022f)

Click on "Advanced keyboard settings" and click on "Input language hot keys"
![image](https://github.com/xmdn/2_of_3_lang_switch_hotkey/assets/16866473/c0cb4a04-15f1-4b24-a7e1-967a5083f5f6)

You will see window, and here on "Advanced Key Settings" you need to turn off default Between input language switch (which is by default is shift + alt for changing language.
You need to set up ctrl + 0 and ctrl + 2 for langs which you want to switch by "shift + alt" and which you want to switch with "alt + r" is ctrl + 1. 
Apply config for hotkeys.

in our code english


