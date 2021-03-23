#Region Public

Function Restore(Snapshot) Export
	
	Self = DataProcessors.Editor.Create();
	Self.Value = Snapshot.Value;
	Self.Data = Snapshot.Data;
	
	For Each Row In Snapshot.Table Do
		RowTable = Self.Table.Add();
		RowTable.Key = Row.Key;
		RowTable.Val = Row.Val;
	EndDo;
	
	Return Self;
	
EndFunction

#EndRegion