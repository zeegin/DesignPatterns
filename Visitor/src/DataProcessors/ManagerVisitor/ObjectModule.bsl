Var Manager;

#Region Public

Function SetManager(DocumentObject, Manager_) Export
	
	Manager = Manager_;
	Return DocumentObject.Accept(ThisObject);
	
EndFunction

#EndRegion

#Region Internal

Function DoForSalesOrder(DocumentObject) Export
	
	DocumentObject.ResponsiblePerson = Manager;
	Return True;
	
EndFunction

Function DoForPicklist(DocumentObject) Export
	
	DocumentObject.Manager = Manager;
	Return True;
	
EndFunction

#EndRegion
