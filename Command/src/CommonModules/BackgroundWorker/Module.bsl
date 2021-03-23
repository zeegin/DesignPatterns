#Region Public

Function NewWorker() Export
	
	Self = New Structure;
	Self.Insert("OnFinish", Undefined);
	Self.Insert("OnProgress", Undefined);
	
	Return Self;
	
EndFunction

Procedure Run(Worker) Export
	
	// Invoker!
	ExecuteNotifyProcessing(Worker.OnProgress, "Specific Args 1");
	ExecuteNotifyProcessing(Worker.OnFinish, "Specific Args 2");
	
EndProcedure

#EndRegion