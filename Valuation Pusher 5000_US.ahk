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
                                                                                                                                                

				      
				      :::    :::  ::::::::          :::::::::: ::::::::: ::::::::::: ::::::::::: ::::::::::: ::::::::  ::::    ::: 
				     :+:    :+: :+:    :+:         :+:        :+:    :+:    :+:         :+:         :+:    :+:    :+: :+:+:   :+:  
				    +:+    +:+ +:+                +:+        +:+    +:+    +:+         +:+         +:+    +:+    +:+ :+:+:+  +:+   
				   +#+    +:+ +#++:++#++         +#++:++#   +#+    +:+    +#+         +#+         +#+    +#+    +:+ +#+ +:+ +#+    
				  +#+    +#+        +#+         +#+        +#+    +#+    +#+         +#+         +#+    +#+    +#+ +#+  +#+#+#     
				 #+#    #+# #+#    #+#         #+#        #+#    #+#    #+#         #+#         #+#    #+#    #+# #+#   #+#+#      
				 ########   ########          ########## ######### ###########     ###     ########### ########  ###    ####       
      

                                                                                                                                                
Created by Austin White @ all rights reserved
PitchBook Data Inc.
Fight Club Research Team
Please contact austin.white@pitchbook.com to report any issues or update requests regarding this script.


This is a comprehensive script that contains commands pertaining to:
   Company: PitchBook Data
  Department: Research
 Team: Fight Club 
Created by: Benjamin Woletz 
Modified by: Austin White (Fight Club)
Please contact Benjamin.Woletz@pitchbook.com to report any issues or update requests regarding this script. 
		

NOTE, READ THIS BEFORE PROCEEDING:
Before running script, update the following line by replacing only ["BW"] with your initials
AND update ["#QYY Survey"] below if applicable
*/
#P::Pause

;_________________________________

      label_initials:
             Send, Austin.White:
      return

	


;______________SECTION: FIGHT CLUB SHORTCUTS___________________

; AL1.) Auto Timestamp + Initials
; For different formatting of time, see: https://www.autohotkey.com/docs/commands/FormatTime.htm

timestamp_initials:
^+d::
     KeyWait Control
     KeyWait Alt
     KeyWait Shift
     FormatTime, ShortTime,, M/d/yy
     Send, %ShortTime%
     Send, %A_Space%
     Gosub, label_initials
     Send, %A_Space%
return

::td::
 FormatTime, ShortTime,, M/d/yy
     Send, %ShortTime%
Return

added_valuation:
::fd::
     Gosub, timestamp_initials
     Gosub, valuation_added
Return

premoney_valuation:
::pmv::
  pmv =, putting the company's pre-money valuation at $
  Send, %pmv% 
return

de_operations:
::dep::
  dep = , round created per DE OPS ///
  Send, %dep%
return

valuation_added:
::va::
  va = val added ///
  Send, %va%
Return

val_added:
::vas::
  vas = val added
  Send, %vas%
Return

fightclub_method:
::fcm::
  fcm = , round created per FC methodology ///	
  Send, %fcm%
Return

an_estimated:
::est::
  est = an estimated
  Send, %est%
Return

through_the_combination:
::ttc::
  ttc = through the combination
  Send, %ttc%
Return

fightclub_debt:
::dfc::
  dfc = , debt assumed per FC Methodology ///
  Send, %dfc%
Return

seed_val_added:
::sed::
  sed = seed val added ///
  Send, %sed%
Return

series_a_val:
::ase::
  ase = Series A val added ///
  Send, %ase%
Return

amendment_template:
::ame::
  ame = () Amendment: Com- Pref- 
  Send, %ame%
Return

original_template:
::ori::
  ori = () Original: Com- Pref- 
  Send, %ori%
Return

million_quick:
::mi::
  mi = million 
  Send, %mi%
Return

valuation_adjusted:
::vaj::
  vaj = val adjusted /// 
  Send, %vaj%
Return

series_a:
::sa::
  sa = Series A 
  Send, %sa%
Return

series_b:
::sb::
  sb = Series B 
  Send, %sb%
Return

series_c:
::sc::
  sc = Series C 
  Send, %sc%
Return

series_d:
::sd::
  sd = Series D 
  Send, %sd%
Return

series_e:
::se::
  se = Series E 
  Send, %se%
Return

out_of_scope:
::sco::
  sco = val out of scope /// 
  Send, %sco%
Return


;______________SECTION: FIGHT CLUB TOOL SHORTCUTS_________________________________

copy_and_paste_table:
::cv::
	SendInput, ^a
	SendInput, ^c
	SendInput, {Right 2}
	SendInput, ^a
	SendInput, ^v
	SendInput, {Down}
	SendInput, +{Tab}
	SendInput, {Left}
Return

copy_and_paste_price:
::sf1:: 
	SendInput, ^v
	SendInput, {Right}
	SendInput, ^v
	SendInput, {Right}
	SendInput, ^v
Return

paste_csa:
::kj::
	SendInput, {Tab 3}
	SendInput, ^v
Return

remove_csa:
::xv::
	SendInput, ^a
	SendInput, ^x
	SendInput, +{Tab 3}
	SendInput, {Space}
	SendInput, ^v
Return
;______________SECTION: FIGHT CLUB TOOL SHORTCUTS_________________________________

act_log_settings:
^+a::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput {Tab}
	SendInput, Co VC - New Round
	SendInput {Tab}
	SendInput, f
	SendInput {Tab}
	SendInput, p
	SendInput {Tab}
	SendInput {Tab}
	SendInput, l
	SendInput {Tab}
	SendInput, n
	SendInput {Tab 6}
	Gosub, timestamp_initials
	Gosub, client_request
	SendInput, {space}
	SendInput, {Tab 4}
	SendInput, {Enter}
return

amendment_tranching:
::qwer::
	SendInput, +{Tab 4}
	SendInput, ^a
	SendInput, ^x
	SendInput, {Tab 4}
	SendInput, ^v
	SendInput, {Space}
	GoSub, amendment_template
	SendInput, +{Tab 3}
	SendInput, ^a
	SendInput, ^x
	SendInput, {Tab 3}
	SendInput, {Left 23}
	SendInput, ^v
	SendInput, {End}
	SendInput, {Tab 3}
	SendInput, ^x
	SendInput, +{Tab 3}
	SendInput, {Left 6}
	SendInput, ^v
	SendInput, {End}
	SendInput, {Tab 3}
	SendInput, {Down 1}
	SendInput, ^a
	SendInput, ^x
	SendInput, {Up 1}
	SendInput, +{Tab 3}
	SendInput, ^v
	SendInput, {space}
	SendInput, ^f
	Sleep, 1000
	SendInput, add 
	Sleep, 1000
	SendInput, {Escape}
	SendInput, 	+{Tab 8} 
	SendInput, ^x
	SendInput, ^f
	Sleep, 1000
	SendInput, stock split
	Sleep, 1000
	SendInput, {Tab}
	SendInput, {Enter}
	SendInput, {Escape}
	SendInput, +{Tab}
	SendInput, {-}
	SendInput, ^v
	SendInput, ^{Left}
	SendInput, {Left}
Return

amendment_unwind:
::rewq::
	SendInput, {Click 2}
	SendInput, ^x
	SendInput, {Tab 3} 
	SendInput, {Down 1}
	SendInput, ^v
	SendInput, {Up 1}
	SendInput, +{Tab 3} 
	SendInput, {Left 7} 
	SendInput, {Click 2} 
	SendInput, ^x
	SendInput, {Tab 3} 
	SendInput, ^v
	SendInput, +{Tab 3} 
	SendInput, {Left 18}
	SendInput, {Click 2}
	SendInput, ^x
	SendInput, +{Tab 3}
	SendInput, ^v
	SendInput, {tab 3} 
	SendInput, {Left 2}
	SendInput, +{Left 10}	
	SendInput, ^x 
	SendInput, +{Tab 4} 
	SendInput, ^v
Return

;______________SECTION: ClIENT RESPONSE SHORTCUTS___________________________

let_me_know:
::lmk::
  lmk = Please let me know if you have any further questions{!} 
  Send, %lmk%
Return

client_request:
::crc::
  crc = Client Request ///
  Send, %crc%
Return

how_we_get_valuations:
::hwv::
	SendInput, {Text}We gather valuations from a variety of public sources and direct outreach to the companies. If we’re unable to find a company’s valuation via public sources, we calculate it–using information from corporate and regulatory filings, and a proprietary formula that’s similar to calculating market cap for a public company. This formula takes into account factors like actual share price, # of shares authorized and issued, as well as potential option pool sizes.
	SendInput, {Return}
	SendInput, {Text}With this, our team is able to come to a conclusive number that (based on feedback and on-going QA tests) generally falls within a five to ten percent margin of error.
	SendInput, {Return}
	SendInput, {Text}The next step of our research process is critical: after receiving new information about a company (valuations or other), our research team contacts the company’s executives for verification and additional information.
	SendInput, {Return}
	SendInput, {Text}At this point, the company has full power to update or correct any information on their PitchBook profile, including their valuation.
return

company_not_in_scope:
::nis::
	SendInput, {Text}Fight Club cannot add a valuation on the company at this time because the company is incorporated in , which is currently out of Fight Club's scope. Fight Club's current scope includes the U.S, U.K, Belgium, France, and coming soon Germany.
	SendInput, {Space} 
	Gosub, let_me_know
Return

Cannot_add_val:
::cav::
	SendInput, {Text} Fight Club cannot obtain the information needed to add a valuation to the company at this time.
	SendInput, {Space}
	gosub, let_me_know
Return

;______________SECTION: OUTLOOK BLOCKS___________________________


; Ob9.) Thanks for reaching out
::tfr::
     tfr = Thanks for reaching out{!}
     SendInput, %tfr%
Return

; Ob8.) Best Regards, Austin
::bra::
     SendInput, Best Regards
     SendInput, {,}
     SendInput {Enter}
     SendInput, Austin
     SendInput {Enter}
Return

; 

; Ob13.) Thanks again, Austin
::tya::
     SendInput, Thanks again
     SendInput, {,}
     SendInput {Enter}
     SendInput, Austin
     SendInput {Enter}
Return

; Ob14.) Warm regards, Austin
::wra::
     SendInput, Warm regards
     SendInput, {,}
     SendInput {Enter}
     SendInput, Austin
     SendInput {Enter}
Return

past_common:
::pc1::
	clipboard := ""
	Sendinput, ^a
	Sendinput, ^c
	ClipWait
	pcsa := clipboard
	pcsa := Strreplace(pcsa, ",")
	SendInput, +{tab 17}
	clipboard := ""
	Sendinput, ^c
	ClipWait
	sso := clipboard
	sso := strreplace(sso,",") 
	Sendinput, ^f
	Sleep, 200
	Sendinput, stock split
	Sleep, 200
	Sendinput, {tab}
	Sendinput, {Enter}
	Sendinput, {Escape}
	Sleep, 200
	Sendinput, +{tab}
	Sendinput, {Enter}
	pc := pcsa + sso 
	Sendinput, PC 
	Sendinput, {Space}%pc%
Return

first_round:
::fr1::
	clipboard := ""
	Sendinput, ^a
	Sendinput, ^c
	ClipWait
	cso := Clipboard
	cso := StrReplace(cso, ",")
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
                                                                                                                                                

				      
				      :::    :::  ::::::::          :::::::::: ::::::::: ::::::::::: ::::::::::: ::::::::::: ::::::::  ::::    ::: 
				     :+:    :+: :+:    :+:         :+:        :+:    :+:    :+:         :+:         :+:    :+:    :+: :+:+:   :+:  
				    +:+    +:+ +:+                +:+        +:+    +:+    +:+         +:+         +:+    +:+    +:+ :+:+:+  +:+   
				   +#+    +:+ +#++:++#++         +#++:++#   +#+    +:+    +#+         +#+         +#+    +#+    +:+ +#+ +:+ +#+    
				  +#+    +#+        +#+         +#+        +#+    +#+    +#+         +#+         +#+    +#+    +#+ +#+  +#+#+#     
				 #+#    #+# #+#    #+#         #+#        #+#    #+#    #+#         #+#         #+#    #+#    #+# #+#   #+#+#      
				 ########   ########          ########## ######### ###########     ###     ########### ########  ###    ####       
      

                                                                                                                                                
Created by Austin White @ all rights reserved
PitchBook Data Inc.
Fight Club Research Team
Please contact austin.white@pitchbook.com to report any issues or update requests regarding this script.


This is a comprehensive script that contains commands pertaining to:
   Company: PitchBook Data
  Department: Research
 Team: Fight Club 
Created by: Austin White (Fight Club)
Please contact Austin.White@pitchbook.com to report any issues or update requests regarding this script. 
		

NOTE, READ THIS BEFORE PROCEEDING:
Before running script, update the following line by replacing only ["BW"] with your initials
AND update ["#QYY Survey"] below if applicable
*/
#P::Pause

;_________________________________

      label_initials:
             Send, Austin.White:
      return

	


;______________SECTION: FIGHT CLUB SHORTCUTS___________________

; AL1.) Auto Timestamp + Initials
; For different formatting of time, see: https://www.autohotkey.com/docs/commands/FormatTime.htm

timestamp_initials:
^+d::
     KeyWait Control
     KeyWait Alt
     KeyWait Shift
     FormatTime, ShortTime,, M/d/yy
     Send, %ShortTime%
     Send, %A_Space%
     Gosub, label_initials
     Send, %A_Space%
return

::td::
 FormatTime, ShortTime,, M/d/yy
     Send, %ShortTime%
Return

added_valuation:
::fd::
     Gosub, timestamp_initials
     Gosub, valuation_added
Return

premoney_valuation:
::pmv::
  pmv =, putting the company's pre-money valuation at $
  Send, %pmv% 
return

de_operations:
::dep::
  dep = , round created per DE OPS ///
  Send, %dep%
return

valuation_added:
::va::
  va = val added ///
  Send, %va%
Return

val_added:
::vas::
  vas = val added
  Send, %vas%
Return

fightclub_method:
::fcm::
  fcm = , round created per FC methodology ///	
  Send, %fcm%
Return

an_estimated:
::est::
  est = an estimated
  Send, %est%
Return

through_the_combination:
::ttc::
  ttc = through the combination
  Send, %ttc%
Return

fightclub_debt:
::dfc::
  dfc = , debt assumed per FC Methodology ///
  Send, %dfc%
Return

seed_val_added:
::sed::
  sed = seed val added ///
  Send, %sed%
Return

series_a_val:
::ase::
  ase = Series A val added ///
  Send, %ase%
Return

amendment_template:
::ame::
  ame = () Amendment: Com- Pref- 
  Send, %ame%
Return

original_template:
::ori::
  ori = () Original: Com- Pref- 
  Send, %ori%
Return

million_quick:
::mi::
  mi = million 
  Send, %mi%
Return

valuation_adjusted:
::vaj::
  vaj = val adjusted /// 
  Send, %vaj%
Return

series_a:
::sa::
  sa = Series A 
  Send, %sa%
Return

series_b:
::sb::
  sb = Series B 
  Send, %sb%
Return

series_c:
::sc::
  sc = Series C 
  Send, %sc%
Return

series_d:
::sd::
  sd = Series D 
  Send, %sd%
Return

series_e:
::se::
  se = Series E 
  Send, %se%
Return

out_of_scope:
::sco::
  sco = val out of scope /// 
  Send, %sco%
Return


;______________SECTION: FIGHT CLUB TOOL SHORTCUTS_________________________________

copy_and_paste_table:
::cv::
	SendInput, ^a
	SendInput, ^c
	SendInput, {Right 2}
	SendInput, ^a
	SendInput, ^v
	SendInput, {Down}
	SendInput, +{Tab}
	SendInput, {Left}
Return

copy_and_paste_price:
::sf1:: 
	SendInput, ^v
	SendInput, {Right}
	SendInput, ^v
	SendInput, {Right}
	SendInput, ^v
Return

paste_csa:
::kj::
	SendInput, {Tab 3}
	SendInput, ^v
Return

remove_csa:
::xv::
	SendInput, ^a
	SendInput, ^x
	SendInput, +{Tab 3}
	SendInput, {Space}
	SendInput, ^v
Return
;______________SECTION: FIGHT CLUB TOOL SHORTCUTS_________________________________

act_log_settings:
^+a::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput {Tab}
	SendInput, Co VC - New Round
	SendInput {Tab}
	SendInput, f
	SendInput {Tab}
	SendInput, p
	SendInput {Tab}
	SendInput {Tab}
	SendInput, l
	SendInput {Tab}
	SendInput, n
	SendInput {Tab 6}
	Gosub, timestamp_initials
	Gosub, client_request
	SendInput, {space}
	SendInput, {Tab 4}
	SendInput, {Enter}
return

amendment_tranching:
::qwer::
	SendInput, +{Tab 4}
	SendInput, ^a
	SendInput, ^x
	SendInput, {Tab 4}
	SendInput, ^v
	SendInput, {Space}
	GoSub, amendment_template
	SendInput, +{Tab 3}
	SendInput, ^a
	SendInput, ^x
	SendInput, {Tab 3}
	SendInput, {Left 23}
	SendInput, ^v
	SendInput, {End}
	SendInput, {Tab 3}
	SendInput, ^x
	SendInput, +{Tab 3}
	SendInput, {Left 6}
	SendInput, ^v
	SendInput, {End}
	SendInput, {Tab 3}
	SendInput, {Down 1}
	SendInput, ^a
	SendInput, ^x
	SendInput, {Up 1}
	SendInput, +{Tab 3}
	SendInput, ^v
	SendInput, {space}
	SendInput, ^f
	Sleep, 1000
	SendInput, add 
	Sleep, 1000
	SendInput, {Escape}
	SendInput, 	+{Tab 8} 
	SendInput, ^x
	SendInput, ^f
	Sleep, 1000
	SendInput, stock split
	Sleep, 1000
	SendInput, {Tab}
	SendInput, {Enter}
	SendInput, {Escape}
	SendInput, +{Tab}
	SendInput, {-}
	SendInput, ^v
	SendInput, ^{Left}
	SendInput, {Left}
Return

amendment_unwind:
::rewq::
	SendInput, {Click 2}
	SendInput, ^x
	SendInput, {Tab 3} 
	SendInput, {Down 1}
	SendInput, ^v
	SendInput, {Up 1}
	SendInput, +{Tab 3} 
	SendInput, {Left 7} 
	SendInput, {Click 2} 
	SendInput, ^x
	SendInput, {Tab 3} 
	SendInput, ^v
	SendInput, +{Tab 3} 
	SendInput, {Left 18}
	SendInput, {Click 2}
	SendInput, ^x
	SendInput, +{Tab 3}
	SendInput, ^v
	SendInput, {tab 3} 
	SendInput, {Left 2}
	SendInput, +{Left 10}	
	SendInput, ^x 
	SendInput, +{Tab 4} 
	SendInput, ^v
Return

;______________SECTION: ClIENT RESPONSE SHORTCUTS___________________________

let_me_know:
::lmk::
  lmk = Please let me know if you have any further questions{!} 
  Send, %lmk%
Return

client_request:
::crc::
  crc = Client Request ///
  Send, %crc%
Return

how_we_get_valuations:
::hwv::
	SendInput, {Text}We gather valuations from a variety of public sources and direct outreach to the companies. If we’re unable to find a company’s valuation via public sources, we calculate it–using information from corporate and regulatory filings, and a proprietary formula that’s similar to calculating market cap for a public company. This formula takes into account factors like actual share price, # of shares authorized and issued, as well as potential option pool sizes.
	SendInput, {Return}
	SendInput, {Text}With this, our team is able to come to a conclusive number that (based on feedback and on-going QA tests) generally falls within a five to ten percent margin of error.
	SendInput, {Return}
	SendInput, {Text}The next step of our research process is critical: after receiving new information about a company (valuations or other), our research team contacts the company’s executives for verification and additional information.
	SendInput, {Return}
	SendInput, {Text}At this point, the company has full power to update or correct any information on their PitchBook profile, including their valuation.
return

company_not_in_scope:
::nis::
	SendInput, {Text}Fight Club cannot add a valuation on the company at this time because the company is incorporated in , which is currently out of Fight Club's scope. Fight Club's current scope includes the U.S, U.K, Belgium, France, and coming soon Germany.
	SendInput, {Space} 
	Gosub, let_me_know
Return

Cannot_add_val:
::cav::
	SendInput, {Text} Fight Club cannot obtain the information needed to add a valuation to the company at this time.
	SendInput, {Space}
	gosub, let_me_know
Return

;______________SECTION: OUTLOOK BLOCKS___________________________


; Ob9.) Thanks for reaching out
::tfr::
     tfr = Thanks for reaching out{!}
     SendInput, %tfr%
Return

; Ob8.) Best Regards, Austin
::bra::
     SendInput, Best Regards
     SendInput, {,}
     SendInput {Enter}
     SendInput, Austin
     SendInput {Enter}
Return

; 

; Ob13.) Thanks again, Austin
::tya::
     SendInput, Thanks again
     SendInput, {,}
     SendInput {Enter}
     SendInput, Austin
     SendInput {Enter}
Return

; Ob14.) Warm regards, Austin
::wra::
     SendInput, Warm regards
     SendInput, {,}
     SendInput {Enter}
     SendInput, Austin
     SendInput {Enter}
Return

past_common:
::pc1::
	clipboard := ""
	Sendinput, ^a
	Sendinput, ^c
	ClipWait
	pcsa := clipboard
	pcsa := Strreplace(pcsa, ",")
	SendInput, +{tab 17}
	clipboard := ""
	Sendinput, ^c
	ClipWait
	sso := clipboard
	sso := strreplace(sso,",") 
	Sendinput, ^f
	Sleep, 200
	Sendinput, stock split
	Sleep, 200
	Sendinput, {tab}
	Sendinput, {Enter}
	Sendinput, {Escape}
	Sleep, 200
	Sendinput, +{tab}
	Sendinput, {Enter}
	pc := pcsa + sso 
	Sendinput, PC 
	Sendinput, {Space}%pc%
Return

first_round:
::fr1::
	clipboard := ""
	Sendinput, ^a
	Sendinput, ^c
	ClipWait
	cso := Clipboard
	cso := StrReplace(cso, ",")
	SendInput, {Down}
	Clipboard := ""
	Sendinput, ^a
	SendInput, ^c 
	ClipWait
	pso := Clipboard
	pso := StrReplace(pso, ",")
	SendInput, ^f
	Sleep, 1000
	SendInput, split
	Sleep, 1000
	SendInput, {Escape}
	SendInput, {Tab 4} 
	SendInput, {Down}
	Clipboard := ""
	SendInput, ^a
	SendInput, ^c
	Clipwait
	ppso := Clipboard
	ppso := StrReplace(ppso, ",")
	SendInput, {Up}
	SendInput, +{Tab 4}
	fr := cso - pso + ppso
	SendInput, {Enter}
	SendInput, FR 
	SendInput, {Space}%fr%
Return

Dummy_common:
::rf::
	clipboard := ""
	Sendinput, ^a
	Sendinput, ^c
	ClipWait
	s1 := clipboard
	s1 := Strreplace(s1, ",")
	Sendinput, {Down}
	clipboard := ""
	Sendinput, ^a
	Sendinput, ^c
	ClipWait
	s2 := clipboard
	s2 := Strreplace(s2, ",")
	SendInput, {Down}
	s3 := s1 + s2
	Sendinput, %s3%
	SendInput, ^a
	Sendinput, ^c
Return 
	