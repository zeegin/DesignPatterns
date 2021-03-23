#Region Public

Function Init(Manager) Export
	
	DocumentsList = GetDocuments(); // Mixed documents type
	
	For Each Document In DocumentsList Do
	
		Table = ProductsTableVisitor.GetTable(Document.GetObject());
		
		ManagerVisitor = DataProcessors.ManagerVisitor.Create();
		ManagerVisitor.SetManager(Document.GetObject, Manager)
	EndDo; 
	
EndFunction

#EndRegion

#Region Private

Function GetDocuments()
	
	Query = New Query;
	Query.Text =
		"SELECT
		|	Picklist.Ref,
		|	NULL
		|FROM
		|	Document.Picklist AS Picklist
		|
		|UNION ALL
		|
		|SELECT
		|	NULL,
		|	SalesOrder.Ref
		|FROM
		|	Document.SalesOrder AS SalesOrder";
	
	QueryResult = Query.Execute();
	Return QueryResult.Unload();
	
EndFunction

#EndRegion