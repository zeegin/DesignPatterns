
Procedure OnWrite()
	
	Module = Enums.StocktakingState.GetModule(State);
	Module.DeclareSomething(ThisObject);
	
EndProcedure