; $$\    $$\          $$\                      $$\     $$\                           $$$$$$$\                      $$\                                 
; $$ |   $$ |         $$ |                     $$ |    \__|                          $$  __$$\                     $$ |                                
; $$ |   $$ |$$$$$$\  $$ |$$\   $$\  $$$$$$\ $$$$$$\   $$\  $$$$$$\  $$$$$$$\        $$ |  $$ |$$\   $$\  $$$$$$$\ $$$$$$$\   $$$$$$\   $$$$$$\        
; \$$\  $$  |\____$$\ $$ |$$ |  $$ | \____$$\\_$$  _|  $$ |$$  __$$\ $$  __$$\       $$$$$$$  |$$ |  $$ |$$  _____|$$  __$$\ $$  __$$\ $$  __$$\       
;  \$$\$$  / $$$$$$$ |$$ |$$ |  $$ | $$$$$$$ | $$ |    $$ |$$ /  $$ |$$ |  $$ |      $$  ____/ $$ |  $$ |\$$$$$$\  $$ |  $$ |$$$$$$$$ |$$ |  \__|      
;   \$$$  / $$  __$$ |$$ |$$ |  $$ |$$  __$$ | $$ |$$\ $$ |$$ |  $$ |$$ |  $$ |      $$ |      $$ |  $$ | \____$$\ $$ |  $$ |$$   ____|$$ |            
;    \$  /  \$$$$$$$ |$$ |\$$$$$$  |\$$$$$$$ | \$$$$  |$$ |\$$$$$$  |$$ |  $$ |      $$ |      \$$$$$$  |$$$$$$$  |$$ |  $$ |\$$$$$$$\ $$ |            
;     \_/    \_______|\__| \______/  \_______|  \____/ \__| \______/ \__|  \__|      \__|       \______/ \_______/ \__|  \__| \_______|\__|            
;                                                                                                                                                     
;                                                                                                                                                     
;                                                                                                                                                     
;                                                 $$$$$$$\   $$$$$$\   $$$$$$\   $$$$$$\                                                               
;                                                 $$  ____| $$$ __$$\ $$$ __$$\ $$$ __$$\                                                              
;                                                 $$ |      $$$$\ $$ |$$$$\ $$ |$$$$\ $$ |                                                             
;                                                 $$$$$$$\  $$\$$\$$ |$$\$$\$$ |$$\$$\$$ |                                                             
;                                                 \_____$$\ $$ \$$$$ |$$ \$$$$ |$$ \$$$$ |                                                             
;                                                 $$\   $$ |$$ |\$$$ |$$ |\$$$ |$$ |\$$$ |                                                             
;                                                 \$$$$$$  |\$$$$$$  /\$$$$$$  /\$$$$$$  /                                                             
;                                                  \______/  \______/  \______/  \______/                                                              
;                                                                                                                                                 
; 
; 
;				      :::::::::: :::    :::          :::::::::: ::::::::: ::::::::::: ::::::::::: ::::::::::: ::::::::  ::::    ::: 
;				     :+:        :+:    :+:          :+:        :+:    :+:    :+:         :+:         :+:    :+:    :+: :+:+:   :+:  
;				    +:+        +:+    +:+          +:+        +:+    +:+    +:+         +:+         +:+    +:+    +:+ :+:+:+  +:+   
;				   +#++:++#   +#+    +:+          +#++:++#   +#+    +:+    +#+         +#+         +#+    +#+    +:+ +#+ +:+ +#+    
;				  +#+        +#+    +#+          +#+        +#+    +#+    +#+         +#+         +#+    +#+    +#+ +#+  +#+#+#     
;				 #+#        #+#    #+#          #+#        #+#    #+#    #+#         #+#         #+#    #+#    #+# #+#   #+#+#      
;				##########  ########           ########## ######### ###########     ###     ########### ########  ###    ####       
;
;                                                                                                                                                 
; Create by Brian Hart @ all rights reserved
; PitchBook Data Inc.
; Fight Club Research Team
; Please contact Brian.Hart@pitchbook.com to report any issues or update requests regarding this script or if you'd just like to talk. 


;  					                                      -----TABLE OF CONTENTS-----
; ###############################################################################################################################################

;	1. Fight Club Tool Functions 
;	2. RTS Round Functions
;	3. Act Log Functions
;	4. FC Research Request Functions

#P::Pause

; ###############################################################################################################################################

; Returns initials (update before use)

label_initials:
	SendInput, B.J.H:
return

;                                                     -----FIGHT CLUB TOOL FUNCTIONS-----
; ###############################################################################################################################################

; Auto Timestamp/Initials: Shift + Control + d
; For different formatting of time, see: https://www.autohotkey.com/docs/commands/FormatTime.htm
;
auto_timestamp:
^+d::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	FormatTime, ShortTime,, M/d/yy
	SendInput, %ShortTime%
	SendInput, %A_Space%
	Gosub, label_initials
	SendInput, %A_Space%
return


; Today's Date: td + Space
;
todays_date:
::td::
	FormatTime, ShortTime,, M/d/yy
	SendInput, %ShortTime%
return


; Shares issued: sh + Space
;
shares_issued:
::sh::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput, shares issued @ EUR  
return


; BSA warrants issued: Shift + Control + w
;
warrants_issued:
^+w::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput, with BSA warrants attached
return

; BSA warrants exercised: du + Space
;
warrants_exercised:
::du::
	SendInput, due to exercise of BSA warrants
return

; Create Ordinary Share Class: Shift + Control + o
;
ord_shares:
^+o::
	SendInput, ^f
	Sleep 200
	SendInput, New Type
	Sleep 200
	SendInput, {Escape}
	SendInput, {Tab}
	SendInput, Ordinary
	SendInput, {Tab}
	SendInput, {Enter}
	SendInput {F5}
return

; Shares issued at incorporation: inc + Space
;
inc_shares:
::inc::
	SendInput, ordinary{Space} 
	Gosub, shares_issued
	SendInput, {Space}1 (par) at incorporation.
return

; Shares issued at incorporation note: Shift + Control + i
;
inc_note:
^+i::
	SendInput, ^f
	Sleep 200
	SendInput, Add Type
	Sleep 200
	SendInput, {Escape}
	SendInput, +{Tab 6}
	clipboard := ""
	SendInput, ^c
	ClipWait
	ParValue := clipboard
	SendInput, +{Tab}
	clipboard := ""
	SendInput, ^c
	ClipWait
	NumShares := clipboard
	SendInput, +{Tab 21}
	Gosub, auto_timestamp
	SendInput, %NumShares% ordinary{Space}
	Gosub, shares_issued
	SendInput, {Space}%ParValue% (par) at incorporation.
return

; Shares issued note: Shift + Control + n
;
share_note:
^+n::
 	SendInput, ^f
	Sleep 200
	SendInput, Add Type
	Sleep 200
	SendInput, {Escape}
	SendInput, +{Tab 3}
	clipboard := ""
	SendInput, ^c
	ClipWait
	OIP := clipboard 
	SendInput, +{Tab 4}
	clipboard := ""
	SendInput, ^c
	ClipWait
	NumShares := clipboard
	SendInput, ^f
	Sleep 200
	SendInput, Stock Split
	Sleep 200
	SendInput, {Tab}
	SendInput, {Enter}
	SendInput, {Escape}
	SendInput, +{Tab}
	SendInput, %NumShares%{Space} 
	Gosub, shares_issued
	SendInput, {Space}%OIP% on{Space}
return

; Round Realization: capreal + Space
;
cap_realization:
::capreal::
	SendInput, Capital increase definitively realized on
return
;                                                        -----RTS ROUND FUNCTIONS-----
; ###############################################################################################################################################                                             

; Create New Dummy Round: Shift + Control + u
;
dummy_round:
^+u::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput, {Tab}
	SendInput, c
	SendInput, {Tab}
	SendInput, e
	SendInput, {Tab 5}
	Sleep 200
	SendInput, estimated
	Send, {Tab 3}
	SendInput, e
	SendInput, {Tab}
	Gosub, auto_timestamp
	SendInput, FC Dummy Round. ///
return

; Estimated Round Details: Shift + Control + `
;
estimated_round:
^+`::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput ^f
	Sleep 200
	SendInput PV Confirm
	Sleep 200
	SendInput {Escape}
	SendInput {Tab 2}
	Sleep 200
	SendInput e
	SendInput {Enter}
	Sleep 200
	SendInput ^f
	Sleep 200
	SendInput, valuation at
	Sleep 200
	SendInput {Escape}
	SendInput {Right}
	SendInput {Space}an estimated 	
return

; Round with Estimated Convertible Debt: Shift + Control + d
;
debt_round:
^+.::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput ^f
	Sleep 200
	SendInput, funding
	Sleep 200
	SendInput, {Escape}
	SendInput, {Left}
	SendInput, {Backspace}
	SendInput, ^+{Left}
	SendInput, ^x
	SendInput, {Left 3}
	SendInput, through a combination{Space}
	SendInput, {Right 2}
	SendInput, {Space}debt and{Space}
	SendInput, ^v
return

;                                                         -----ACT LOG FUNCTIONS-----
; ###############################################################################################################################################                                             

; Act log settings: Shift + Control + a
;
act_log_settings:
^+a::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput {Tab}
	SendInput, Co VC - N
	SendInput {Tab}
	SendInput, f
	SendInput {Tab}
	SendInput, p
	SendInput {Tab}
	SendInput {Tab}
	SendInput, h
	SendInput {Tab}
	SendInput, e
	SendInput {Tab 6}
	Gosub, auto_timestamp
return


; Top-line Valuation act log note: Shift + Control + t
;
top_line:
^+t::
	KeyWait Control
	KeyWait Alt
	KeyWait Shift
	SendInput, Top-line Valuation, DE Workflow Status set to Flag. ///
return

;                                                   -----FC RESEARCH REQUEST FUNCTIONS-----
; ###############################################################################################################################################
                                               

client_request:
::crc::  
 	SendInput, Client Request
return

let_me_know:
::lmk::
 	SendInput, Please let me know if you have any further questions{!} 
return

valuation_methodology:
::valm::
	SendInput, {Text}We gather valuations from a variety of public sources and direct outreach to the companies. If we’re unable to find a company’s valuation via public sources, we calculate it–using information from corporate and regulatory filings, and a proprietary formula that’s similar to calculating market cap for a public company. This formula takes into account factors like actual share price, # of shares authorized and issued, as well as potential option pool sizes.
	SendInput, {Return}
	SendInput, {Text}With this, our team is able to come to a conclusive number that (based on feedback and on-going QA tests) generally falls within a five to ten percent margin of error.
	SendInput, {Return}
	SendInput, {Text}The next step of our research process is critical: after receiving new information about a company (valuations or other), our research team contacts the company’s executives for verification and additional information.
	SendInput, {Return}
	SendInput, {Text}At this point, the company has full power to update or correct any information on their PitchBook profile, including their valuation.
	SendInput, {Space}
	Gosub, let_me_know
return

company_not_in_scope:
::nis::
	SendInput, {Text}Fight Club cannot add a valuation on the company at this time because the company is incorporated in , which is currently out of Fight Club's scope. Fight Club's current scope includes the U.S, U.K, Belgium, France, and is expanding into additional European countries.
	SendInput, {Space} 
	Gosub, let_me_know
return

cant_push_valuation:
::cpv::
	SendInput, Fight Club is unable to complete a valuation or provide cap table information at this time.
	SendInput, {Space}
	Gosub, let_me_know
return

valuation_completed:
::valc::
	SendInput, Fight club was able to complete a valuation
return

publish_cap_table:
::capc::
	SendInput, and publish cap table information{!} Updates will be posted to the platform shortly.
return	