# mkHelper
Madkiwi's FiveM Helper Library  
  
Current Exports:  
PlayerNotification - Displays a notification using the player's headshot. useful for showing personal messages or character related info.  
CharacterNotification - Displays a notification based on the character headshot requested.  
DictionaryNotification - Displays a notification based on dictionary texture images. !!REQUIRES A DICTIONARY TO LOAD!!  
BasicHelperText - Displays Basic Help Text in the top left.  
FloatingHelperText - Displays a FLoating Help Text at a 3D vector  
  
PREVIEW VIDEO:  
GOES HERE  
  
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
  
  
EXAMPLE OF USAGE: (Produces a floating text helper at legion square)  
``` 
if IsEntityAtCoord(PlayerPedId(), 252.49938964844,-876.37615966797,29.882175445557, 1.0,1.0,1.0, 0,1,0) then                                    
        exports["mkHelper"]:BasicHelperText('FLOATER_DEBUG', 'Press ~INPUT_FRONTEND_ACCEPT~ to trigger', 100, false)
        if IsControlJustPressed(0, 201) then
            --
                exports["mkHelper"]:CharacterNotification("CHAR_GANGAPP", "Login Recieved", '', "Activating Garage Chat for: "..GetPlayerName(PlayerId()).."", 4, false)
                Citizen.Wait(2000)
                exports["mkHelper"]:CharacterNotification("CHAR_FRANKLIN", "~o~Franklin", '', "Yo.. Who added the new guy?", 2, true)
                Citizen.Wait(5000)
                exports["mkHelper"]:CharacterNotification("CHAR_FRANK_TREV_CONF", "Trevor", '', "Not me... I told you guys I dont understand this shit..", 7, true)
                Citizen.Wait(5000)
                exports["mkHelper"]:CharacterNotification("CHAR_ALL_PLAYERS_CONF", "Michael", '', "He's the new guy leasing one of Lester's old Garages.. be nice assholes.", 7, true)
                Citizen.Wait(5000)
                exports["mkHelper"]:CharacterNotification("CHAR_MIKE_TREV_CONF", "Trevor", '', "I though this was supposed to be a SECURE form of communication.. WHAT THE HELL MICHAEL", 7, true)
                Citizen.Wait(7000)
                exports["mkHelper"]:CharacterNotification("CHAR_FRANK_TREV_CONF", "~o~Franklin", '', "Ay, as long as they're chill... we're cool. Welcome in homie!", 7, true)
                Citizen.Wait(5000)
                exports["mkHelper"]:CharacterNotification("CHAR_MIKE_FRANK_CONF", "Michael", '', "He's just mad that he's the last to know everything.", 7, true)
                Citizen.Wait(4000)
                exports["mkHelper"]:CharacterNotification("CHAR_MIKE_TREV_CONF", "Trevor", '', "Whatever... I better make money out of this...", 7, true)
                Citizen.Wait(5000)
                exports["mkHelper"]:CharacterNotification("CHAR_MICHAEL", "Michael", '', "Ignore those Dickheads.", 2, true)
                Citizen.Wait(2000)
                exports["mkHelper"]:CharacterNotification("CHAR_MICHAEL", "Michael", '', "Welcome to the neighbourhood.", 7, true)
                Citizen.Wait(4000)
                exports["mkHelper"]:DictionaryNotification("commonmenu", "mp_specitem_cash", "Anonymous $ Transfer", '', "$10,000.00", 9, true)
            --
        end
    else
        if IsEntityAtCoord(PlayerPedId(), 252.49938964844,-876.37615966797,29.882175445557, 59.0,59.0,1.0, 0,1,0) then
            exports["mkHelper"]:FloatingHelperText('FLOATER_DEBUG', 'Floating Helper Location ', 252.49938964844,-876.37615966797,29.882175445557, 10, false)
        end
    end 
```  

    
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
