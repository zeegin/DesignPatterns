Var Object;

#Region Public

Procedure Reset() Export
	
	Object = Catalogs.Leads.CreateItem(); 
	
EndProcedure

Procedure SetTelephone(Tel) Export
	
	Object.Telephone = Tel;
	Object.CountryCode = ExtractCountryCode(Tel);
	
EndProcedure

Procedure SetManager(Manager) Export
	
	Object.ResponsiblePerson = Manager;
	
EndProcedure

Procedure SetDebt(Debt) Export
	
	// Do nothing
	
EndProcedure

Function GetResult()
	
	Return Object;
	
EndFunction

#EndRegion

#Region Private

Function ExtractCountryCode(Tel)
	
	Return Tel; // TODO: Implement it!
	
EndFunction

#EndRegion