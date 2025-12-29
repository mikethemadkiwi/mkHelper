# mkHelper
Madkiwi's FiveM Helper Library  
  
Current Exports:  
PlayerNotification - Displays a notification using the player's headshot. useful for showing personal messages or character related info.  
CharacterNotification - Displays a notification based on the character headshot requested.  
DictionaryNotification - Displays a notification based on dictionary texture images. !!REQUIRES A DICTIONARY TO LOAD!!  
BasicHelperText - Displays Basic Help Text in the top left.  
FloatingHelperText - Displays a FLoating Help Text at a 3D vector  
  
Usage:  
  
PlayerNotification  
```exports["mkHelper"]:PlayerNotification("TITLE_STRING", 'SUBTITLE_STRING', 'CONTENT_MESSAGE_TEXT', ICONTYPE, PLAYSOUND_BOOLEAN)```  
![Image of PlayerNotification in usage.](examples/player.png)  
  
CharacterNotification  
```exports["mkHelper"]:CharacterNotification("CHAR_NAME_STRING", "TITLE_STRING", 'SUBTITLE_STRING', 'CONTENT_MESSAGE_TEXT', ICONTYPE, PLAYSOUND_BOOLEAN)```   
![Image of CharacterNotification in usage.](examples/character.png)  
  
DictionaryNotification  
```exports["mkHelper"]:DictionaryNotification("TEXTURE_DICT", "TXD_ITEM_NAME", "TITLE_STRING", 'SUBTITLE_STRING', 'CONTENT_MESSAGE_TEXT', ICONTYPE, PLAYSOUND_BOOLEAN)```  
![Image of DictionaryNotification in usage.](examples/dictionary.png)  
  
BasicHelperText  
```exports["mkHelper"]:BasicHelperText("UNIQUE_TEXT_STRING_ID", 'TITLE_STRING', 'CONTENT_MESSAGE_TEXT', DURATION_INT, PLAYSOUND_BOOLEAN)```  
![Image of BasicHelperText in usage.](examples/basic.png)  
  
FloatingHelperText  
```exports["mkHelper"]:FloatingHelperText('UNIQUE_TEXT_STRING_ID', "TITLE_STRING", POSITION_VECTOR3, DURATION_INT, PLAYSOUND_BOOLEAN)```  
![Image of FloatingHelperText in usage.](examples/floating.png)  
  
  
EXAMPLE OF USAGE:  
``` boop ```  

    
Assistance Documentation:  
  
-- Icon types:  
No Icon: 0, 4, 5, 6  
Speech Bubble: 1  
Message: 2  
Friend Request: 3  
Arrow: 7  
RP: 8  
Money: 9  
  
-- Character Textures:  
https://wiki.rage.mp/wiki/Notification_Pictures  
  
-- Dictionary Textures:  
https://wiki.rage.mp/wiki/Textures  
