#Region Public

Function Init() Export
	
	Prototype = New ValueTable();
	Prototype.Columns.Add("Name");
	Prototype.Columns.Add("Value");
	Prototype.Columns.Add("Hash");
	
	Table1 = Prototype.Copy();
	Table2 = Prototype.Copy();
	
EndFunction

#EndRegion

