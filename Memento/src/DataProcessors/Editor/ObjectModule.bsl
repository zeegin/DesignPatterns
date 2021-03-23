#Region Public

Function CreateSnapshot() Export
	
	Self = New Structure;
	Self.Insert("Value", Value);
	Self.Insert("Data", Data);
	
	SerializedTable = New Array;
	For Each RowTable In Table Do
		Row = New Structure; 
		Row.Insert("Key", RowTable.Key);
		Row.Insert("Val", RowTable.Val);
		SerializedTable.Add(Row);
	EndDo;
	
	Self.Insert("Table", SerializedTable);
	
	Return Self;
	
EndFunction

#EndRegion
