Var Object;

#Region Public

Procedure Reset() Export
	
	Object = Catalogs.Partners.CreateItem(); 
	
EndProcedure

Procedure SetTelephone(Tel) Export
	
	Object.Tel = Tel;
	
EndProcedure

Procedure SetManager(Manager) Export
	
	Object.Manager = Manager;
	
EndProcedure

Procedure SetDebt(Debt) Export
	
	Object.Debt = Debt;
	
EndProcedure

Function GetResult()
	
	Return Object;
	
EndFunction

#EndRegion
