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
	
	If IsProduct(Request) Then
		Return Deserialize(Request);
	EndIf;
	
	Return Super.Handle(Request);
	
EndFunction

#EndRegion

#Region Private

Function IsProduct(Request)
	
	Return False; // Implement it!
	
EndFunction

Function Deserialize(Request)
	
	Return New Structure("Keys", "Cucumber");
	
EndFunction

#EndRegion