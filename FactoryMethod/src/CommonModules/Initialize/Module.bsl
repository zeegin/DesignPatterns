#Region Public

Function Init(Parameters) Export
	
	If IsWebClient() Then
		ModuleSpecific = WebClientSpecific;
	Else
		ModuleSpecific = ClientSpecific;
	EndIf;
	
	Wrapper = ModuleSpecific.CreateWrapper();
	
EndFunction

#EndRegion

#Region Private

// TODO: Implement it!
Function IsWebClient()
	
	Return True;
	
EndFunction

#EndRegion