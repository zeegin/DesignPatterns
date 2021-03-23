#Region Public

Function BeautyMethod2WTF(Parameters) Export
	
	Input = Convert(Parameters);
	Output = Undefined;
	
	Legacy.WTFMethod(Input, Output);
	
	Result = Extract(Output);
	Return Result;
	
EndFunction

#EndRegion

#Region Private

Function Convert(Parameters)
	
	Return Parameters;
	
EndFunction

Function Extract(Output)
	
	Return Output;
	
EndFunction

#EndRegion