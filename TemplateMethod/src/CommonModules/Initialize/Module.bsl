#Region Public

Function Init(Type = "COM") Export
	
	If Type = "COM" Then
		Connector = COMConnector;
	ElsIf Type = "RAS" Then
		Connector = RASConnector;
	Else
		Raise "Unknown type";
	EndIf;
	
	Result = Connector.GetSessions();
	Result = Connector.GetLocks();
	
EndFunction

#EndRegion
