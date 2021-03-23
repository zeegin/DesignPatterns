#If Server Then

#Region Public

Function GetModule(State) Export
	
	If State = Draft Then
		Return StocktakingStateDraft;
	ElsIf State = Ready Then
		Return StocktakingStateReady;
	ElsIf State = InProcess Then
		Return StocktakingStateInProcess;
	ElsIf State = Locked Then
		Return StocktakingStateLocked;
	Else
		Raise "Unknown state";
	EndIf;
	
EndFunction

#EndRegion

#EndIf