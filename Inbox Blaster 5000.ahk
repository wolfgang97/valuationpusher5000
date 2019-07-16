;###############################################################################################################################################
;Research Inbox Functions

;Type Message: rbr + Space
;
type_message:
::rbr::
	SendInput, Please see the request below, it came in through the Research Inbox.
	SendInput, {Down}
	SendInput, {Down}
	SendInput, Thanks{,}
return

;Early Stage: Control + Shift + e
;	      This auto hotkey sends an email to the early stage request inbox, CCs Margaret Campbell, and 
;	      marks the email as completed and with the tag of Early Stage. Tagging of email is accomplished
;	      through adding the follow-up flag to the Quick Access Toolbar (4th position).
;	      Starting position is with the email selected. 
early_stage:
^+e::
	SendInput, ^f
	SendInput, +{Tab 3}
	SendInput, {Return}
	SendInput, {Down}
	SendInput, {Return}
	SendInput, {Tab 3}
	SendInput, sf early
	SendInput, {Tab 2}
	SendInput, margaret
	SendInput, {Tab 3}
	Gosub, type_message
	SendInput, +{Tab 7}
	SendInput, {Return}
	SendInput, ^{F6}
	SendInput, !3m
return

;New Entity: Control + Shift + n
;	      This auto hotkey sends an email to the early stage request inbox, CCs Margaret Campbell, appends "New Entity"
;	      to the body of the email, and pastes the URL of the company (user must ensure it's on the clipboard). It then 
;	      marks the email as completed with the tag of New Co and Early Stage. Tagging of email is accomplished
;	      through adding the follow-up flag to the Quick Access Toolbar (4th position).
;	      Starting position is with the email selected. 
new_entity:
^+l::
	SendInput, ^f
	SendInput, +{Tab 3}
	SendInput, {Return}
	SendInput, {Down}
	SendInput, {Return}
	SendInput, {Tab 3}
	SendInput, sf early
	SendInput, {Tab 2}
	SendInput, margaret
	SendInput, {Tab 3}
	Gosub, type_message
	SendInput, {Return}
	SendInput, New Entity
	SendInput, {Return}
	SendInput, ^v
	SendInput, +{Tab 7}
	SendInput, {Return}
	SendInput, ^{F5}
	SendInput, ^{F6}
	SendInput, !3m
return