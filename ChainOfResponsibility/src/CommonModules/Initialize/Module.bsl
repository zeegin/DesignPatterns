#Region Public

Function Init(Request) Export
	
	PartnerHandler = CreateDeserializePartnerHandler();
	ProductsHandler = CreateDeserializeProductsHandler();
	WarehouseHandler = CreateDeserializeWarehouseHandler();
	
	PartnerHandler
		.SetNext(ProductsHandler)
		.SetNext(WarehouseHandler);
	
	Result = ProductsHandler.Handle(Request);
	
EndFunction

#EndRegion

#Region Private

Function CreateDeserializePartnerHandler()
	
	Base = DataProcessors.BaseHandler.Create();
	Base.Init();
	Self = DataProcessors.DeserializePartnerHandler.Create();
	Self.Init(Base);
	
	Return Self;
	
EndFunction

Function CreateDeserializeProductsHandler()
	
	Base = DataProcessors.BaseHandler.Create();
	Base.Init();
	Self = DataProcessors.DeserializeProductsHandler.Create();
	Self.Init(Base);
	
	Return Self;
	
EndFunction

Function CreateDeserializeWarehouseHandler()
	
	Base = DataProcessors.BaseHandler.Create();
	Base.Init();
	Self = DataProcessors.DeserializeWarehouseHandler.Create();
	Self.Init(Base);
	
	Return Self;
	
EndFunction

#EndRegion