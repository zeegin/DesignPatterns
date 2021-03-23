#Region Public

Function Init(Partner, Message) Export
	
	Context = DataProcessors.Context.Create();
	Context.Partner = Partner;
	
	Strategy = DataProcessors.EmailStrategy.Create();
	
	Context.SetStrategy(Strategy);
	Context.SendMessage(Message);
	
	Strategy = DataProcessors.SMSStrategy.Create();
	
	Context.SetStrategy(Strategy);
	Context.SendMessage(Message);
	
	Strategy = DataProcessors.TelegramStrategy.Create();
	
	Context.SetStrategy(Strategy);
	Context.SendMessage(Message);
	
EndFunction

#EndRegion
