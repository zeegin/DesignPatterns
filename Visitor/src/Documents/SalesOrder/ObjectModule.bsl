#Region Public

Function Accept(Visitor) Export
	
	Return Visitor.DoForSalesOrder(ThisObject);
	
EndFunction

#EndRegion