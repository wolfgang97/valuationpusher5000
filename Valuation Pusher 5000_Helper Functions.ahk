/*

$$\    $$\          $$\                      $$\     $$\                           $$$$$$$\                      $$\                                 
$$ |   $$ |         $$ |                     $$ |    \__|                          $$  __$$\                     $$ |                                
$$ |   $$ |$$$$$$\  $$ |$$\   $$\  $$$$$$\ $$$$$$\   $$\  $$$$$$\  $$$$$$$\        $$ |  $$ |$$\   $$\  $$$$$$$\ $$$$$$$\   $$$$$$\   $$$$$$\        
\$$\  $$  |\____$$\ $$ |$$ |  $$ | \____$$\\_$$  _|  $$ |$$  __$$\ $$  __$$\       $$$$$$$  |$$ |  $$ |$$  _____|$$  __$$\ $$  __$$\ $$  __$$\       
 \$$\$$  / $$$$$$$ |$$ |$$ |  $$ | $$$$$$$ | $$ |    $$ |$$ /  $$ |$$ |  $$ |      $$  ____/ $$ |  $$ |\$$$$$$\  $$ |  $$ |$$$$$$$$ |$$ |  \__|      
  \$$$  / $$  __$$ |$$ |$$ |  $$ |$$  __$$ | $$ |$$\ $$ |$$ |  $$ |$$ |  $$ |      $$ |      $$ |  $$ | \____$$\ $$ |  $$ |$$   ____|$$ |            
   \$  /  \$$$$$$$ |$$ |\$$$$$$  |\$$$$$$$ | \$$$$  |$$ |\$$$$$$  |$$ |  $$ |      $$ |      \$$$$$$  |$$$$$$$  |$$ |  $$ |\$$$$$$$\ $$ |            
    \_/    \_______|\__| \______/  \_______|  \____/ \__| \______/ \__|  \__|      \__|       \______/ \_______/ \__|  \__| \_______|\__|            
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                $$$$$$$\   $$$$$$\   $$$$$$\   $$$$$$\                                                               
                                                $$  ____| $$$ __$$\ $$$ __$$\ $$$ __$$\                                                              
                                                $$ |      $$$$\ $$ |$$$$\ $$ |$$$$\ $$ |                                                             
                                                $$$$$$$\  $$\$$\$$ |$$\$$\$$ |$$\$$\$$ |                                                             
                                                \_____$$\ $$ \$$$$ |$$ \$$$$ |$$ \$$$$ |                                                             
                                                $$\   $$ |$$ |\$$$ |$$ |\$$$ |$$ |\$$$ |                                                             
                                                \$$$$$$  |\$$$$$$  /\$$$$$$  /\$$$$$$  /                                                             
                                                 \______/  \______/  \______/  \______/                                                              
                                                                                                                                                

      :::    ::: :::::::::: :::        :::::::::  :::::::::: :::::::::          :::::::::: :::    ::: ::::    :::  :::::::: ::::::::::: ::::::::::: ::::::::  ::::    :::  :::::::: 
     :+:    :+: :+:        :+:        :+:    :+: :+:        :+:    :+:         :+:        :+:    :+: :+:+:   :+: :+:    :+:    :+:         :+:    :+:    :+: :+:+:   :+: :+:    :+: 
    +:+    +:+ +:+        +:+        +:+    +:+ +:+        +:+    +:+         +:+        +:+    +:+ :+:+:+  +:+ +:+           +:+         +:+    +:+    +:+ :+:+:+  +:+ +:+         
   +#++:++#++ +#++:++#   +#+        +#++:++#+  +#++:++#   +#++:++#:          :#::+::#   +#+    +:+ +#+ +:+ +#+ +#+           +#+         +#+    +#+    +:+ +#+ +:+ +#+ +#++:++#++   
  +#+    +#+ +#+        +#+        +#+        +#+        +#+    +#+         +#+        +#+    +#+ +#+  +#+#+# +#+           +#+         +#+    +#+    +#+ +#+  +#+#+#        +#+    
 #+#    #+# #+#        #+#        #+#        #+#        #+#    #+#         #+#        #+#    #+# #+#   #+#+# #+#    #+#    #+#         #+#    #+#    #+# #+#   #+#+# #+#    #+#     
###    ### ########## ########## ###        ########## ###    ###         ###         ########  ###    ####  ########     ###     ########### ########  ###    ####  ########       
                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                  
Created by Brian Hart @ all rights reserved
PitchBook Data Inc.
Fight Club Research Team
Please contact Brian.Hart@pitchbook.com to report any issues or update requests regarding this script or if you'd just like to talk. 
*/

;Gets Round Information from the Fight Club Tool
;
get_FC_round_info()
{
	SendInput, ^+{Right 44}
	Clipboard := ""
	SendInput, ^c
	ClipWait
	element_str := Clipboard

	While element_str != "Update RTS"
	{
		SendInput, ^+{Right}
		Clipboard := ""
		SendInput, ^c
		ClipWait
		element_str := Clipboard
		element_str := SubStr(element_str, -9)
	}
	
	Clipboard := ""
	SendInput, ^c
	ClipWait
	FC_round_info_raw := []
	FC_round_info_raw := StrSplit(Clipboard, A_Tab)
	temp_str := FC_round_info_raw[27]
	temp_array := []
	temp_array := StrSplit(temp_str, "`r`n")

	FC_round_info := {}

	Loop, 17
	{
		FC_round_info[FC_round_info_raw[A_Index]] := FC_round_info_raw[A_Index + 17]
	}

	FC_round_info["Price per Share"] := FC_round_info["Post-Money Val"]
	FC_round_info["Pre-Money Val"] := temp_array[2]
	FC_round_info["Round Amount"] := temp_array[3]
	FC_round_info["Post-Money Val"] := temp_array[4]
	FC_round_info["% Acquired"] := temp_array[5]
	
	return FC_round_info
}

; Switch to RTS Window
;
switch_to_RTS_window()
{
	SendInput, ^f
	Sleep 200
	SendInput, |
	Sleep 200
	SendInput, {Tab}
	SendInput, {Enter}
	SendInput, {Escape}
	SendInput, ^+{Home}
	Clipboard := ""
	SendInput, ^c
	ClipWait
	comp_name := Clipboard
	window_name := "PitchBook RTS " . comp_name . "- Google Chrome"
	WinActivate, %window_name%
	MouseClick, Left, 295, 218
	return	
}

;Open Round Details
;
open_round_details()
{
	switch_to_RTS_window()
	SendInput, ^f
	Sleep 200
	SendInput, #
	Sleep 200
	SendInput, {Escape}
	FC_round_info := Gosub, get_FC_round_info
	round_number := FC_round_info[Round #]
	SendInput, ^f
	Sleep 200
	SendInput, %round_number%
	Sleep 200
	SendInput, {Tab 12}
	SendInput, {Enter}
	return
}