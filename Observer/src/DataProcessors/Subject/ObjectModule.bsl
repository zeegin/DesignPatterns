Var EventManager Export;

#Region Public

Function BusinessLogic() Export
	
	// Some logic
	
	EventManager.NotifySubscribers("Success");
	
EndFunction

#EndRegion

EventManager = DataProcessors.EventManager.Create();
