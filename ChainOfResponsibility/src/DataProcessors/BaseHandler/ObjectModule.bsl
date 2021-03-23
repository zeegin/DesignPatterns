Var NextHandler;

#Region Public

Function Init(Super = Undefined) Export
	
	Return ThisObject;
	
EndFunction

Function SetNext(Handler) Export
	
	NextHandler = Handler;
	Return Handler;
	
EndFunction

Function Handle(Request) Export
	
	If NextHandler <> Undefined Then
		NextHandler.Handle(Request);
	EndIf;
	
	Return Undefined;
	
EndFunction

#EndRegion