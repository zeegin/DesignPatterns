Var Super;

#Region Public

Function Init(Super_) Export
	
	Super = Super_;
	Return ThisObject;
	
EndFunction

Function SetNext(Handler) Export
	
	Return Super.SetNext(Handler);
	
EndFunction

Function Handle(Request) Export
	
	If IsPartner(Request) Then
		Return Deserialize(Request);
	EndIf;
	
	Return Super.Handle(Request);
	
EndFunction

#EndRegion

#Region Private

Function IsPartner(Request)
	
	Return True; // Implement it!
	
EndFunction

Function Deserialize(Request)
	
	Return New Structure("Vasia", "Petia");
	
EndFunction

#EndRegion