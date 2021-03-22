#Region Public

Function Init(ObjectHTMLOrCOM) Export
	
	If IsWebClient() Then
		ModuleSpecific = WebClientSpecific;
	Else
		ModuleSpecific = ClientSpecific;
	EndIf;
	
	Wrapper = ModuleSpecific.CreateWrapper();
	
	Result = Wrapper.Init(ObjectHTMLOrCOM);
	
EndFunction

#EndRegion

#Region Private

// TODO: Implement it!
Function IsWebClient()
	
	Return True;
	
EndFunction

#EndRegion