#Region Public

Function GetTable(DocumentObject) Export
	
	Return DocumentObject.Accept(ThisObject);
	
EndFunction

#EndRegion

#Region Internal

Function DoForSalesOrder(DocumentObject) Export
	
	Table = New ValueTable;
	Table.Columns.Add("Products");
	Table.Columns.Add("Quantity");
	
	For Each Row In DocumentObject.Products Do
		
		TableRow = Table.Add();
		TableRow.Products = Row.Products;
		TableRow.Quantity = Row.Quantity;
		
	EndDo;
	
	Return Table;
	
EndFunction

Function DoForPicklist(DocumentObject) Export
	
	Table = New ValueTable;
	Table.Columns.Add("Products");
	Table.Columns.Add("Quantity");
	
	For Each Row In DocumentObject.Products Do
		
		TableRow = Table.Add();
		TableRow.Products = Row.Products;
		TableRow.Quantity = Row.Qty;
		
	EndDo;
	
	Return Table;
	
EndFunction

#EndRegion
