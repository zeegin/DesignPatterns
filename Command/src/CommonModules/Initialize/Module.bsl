#Region Public

Procedure Init() Export
	
	// Note! NotifyDescription is a command object!
	
	UserName = "Harry"; // Some specifics context
	
	Worker = BackgroundWorker.NewWorker();
	Worker.OnFinish = NewCommandOnFinish();
	Worker.OnProgress = NewCommandOnProgress(UserName);
	
	BackgroundWorker.Run(Worker);
	
EndProcedure

#EndRegion

#Region Internal

#Region CommandOnFinish

Function NewCommandOnFinish() Export
	
	Return New NotifyDescription("ExecCommandOnFinish", ThisObject);
	
EndFunction

Procedure ExecCommandOnFinish(Result, Context) Export
	
	// Do somethin..
	
EndProcedure

#EndRegion

#Region CommandOnProgress

Function NewCommandOnProgress(UserName) Export
	
	Context = New Structure;
	Context.Insert("UserName", UserName);
	
	Return New NotifyDescription("ExecCommandOnFinish", ThisObject, Context);
	
EndFunction

Procedure ExecCommandOnProgress(Result, Context) Export
	
	// Do something with context... Context.UserName
	
EndProcedure

#EndRegion

#EndRegion