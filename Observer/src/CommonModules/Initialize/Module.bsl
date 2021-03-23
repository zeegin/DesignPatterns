#Region Public

Function Init() Export
	
	Subject = DataProcessors.Subject.Create();
	
	Object = Catalogs.Partner.CreateItem(); 
	Subject.EventManager.Subscribe(Object);
	
	Object = Documents.SalesOrder.CreateDocument(); 
	Subject.EventManager.Subscribe(Object);
	
	Subject.BusinessLogic(); // will notify objects at Update method
	
EndFunction

#EndRegion
