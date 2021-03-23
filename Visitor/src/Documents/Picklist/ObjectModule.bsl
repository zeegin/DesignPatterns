#Region Public

Function Accept(Visitor) Export
	
	Return Visitor.DoForPicklist(ThisObject);
	
EndFunction

#EndRegion