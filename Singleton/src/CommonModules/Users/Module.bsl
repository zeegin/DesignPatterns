
Function CurrentUser() Export
	
	SetPrivilegedMode(True);
	Return SessionParameters.CurrentUser;
	
EndFunction