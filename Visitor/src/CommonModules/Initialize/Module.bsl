#Region Public

Function Init(Manager) Export
	
	DocumentsList = GetDocuments(); // Mixed documents type
	
	For Each Document In DocumentsList Do
	
		Table = ProductsTableVisitor.GetTable(Document.Ref.GetObject());
		
		ManagerVisitor = DataProcessors.ManagerVisitor.Create();
		ManagerVisitor.SetManager(Document.Ref.GetObject(), Manager)
	EndDo; 
	
EndFunction

#EndRegion

#Region Private

Function GetDocuments()
	
	Query = New Query;
	Query.Text =
		"SELECT
		|	Picklist.Ref
		|FROM
		|	Document.Picklist AS Picklist
		|
		|UNION ALL
		|
		|SELECT
		|	SalesOrder.Ref
		|FROM
		|	Document.SalesOrder AS SalesOrder";
	
	QueryResult = Query.Execute();
	Return QueryResult.Unload();
	
EndFunction

#EndRegion
