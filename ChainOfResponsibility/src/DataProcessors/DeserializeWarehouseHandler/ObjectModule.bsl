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
	
	If IsWarehouse(Request) Then
		Return Deserialize(Request);
	EndIf;
	
	Return Super.Handle(Request);
	
EndFunction

#EndRegion

#Region Private

Function IsWarehouse(Request)
	
	Return True; // Implement it!
	
EndFunction

Function Deserialize(Request)
	
	Return New Structure("WhatIAm", "Nothing");
	
EndFunction

#EndRegion