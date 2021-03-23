Var Strategy;

#Region Public

Procedure SetStrategy(Strategy_) Export
	
	Strategy = Strategy_;
	
EndProcedure

Function SendMessage(Message) Export
	
	Strategy.SetRecipient(Partner);
	Strategy.SendMessage(Message);
	
EndFunction

#EndRegion