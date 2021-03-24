#Region Public

Function Init(Manager) Export
	
	DocumentsList = GetDocuments(); // Mixed documents type
	
	For Each Document In DocumentsList Do
	
		DocumentObject = Document.Ref.GetObject(); // internal db call

		// Dont use this pattern only for collecting info
		// Use it for processing objects

		Table = ProductsTableVisitor.GetTable(DocumentObject);
		
		ManagerVisitor = DataProcessors.ManagerVisitor.Create();
		ManagerVisitor.SetManager(DocumentObject, Manager)
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
