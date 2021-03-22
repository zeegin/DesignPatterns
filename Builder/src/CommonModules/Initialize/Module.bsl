#Region Public

Function Init(Manager) Export
	
	// Lead
	
	Builer = DataProcessors.LeadsBuilder.Create();
	
	Director = DataProcessors.Director.Create();
	Director.Init(Builer);
	Object = Director.Make("One", Manager);
	
	// Partner
		
	Builer = DataProcessors.PartnersBuilder.Create();
	
	Director = DataProcessors.Director.Create();
	Director.Init(Builer);
	Object = Director.Make("CleanDebt", Manager);
	
EndFunction

#EndRegion
