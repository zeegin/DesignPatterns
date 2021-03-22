Var Builder;

#Region Public

Procedure Init(Builder_) Export
	
	Builder = Builder_;
	
EndProcedure

Function Make(Type, Manager) Export
	
	Builder.Reset();
	Builder.SetTelephone();
	Builder.SetManager(Manager);
	
	If Type = "CleanDebt" Then
		Builder.SetDebt(0);
	EndIf;
	
	Return Builder.GetResult();
	
EndFunction

#EndRegion