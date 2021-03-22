
Var Factory;

Function Init(Factory_) Export
	
	Factory = Factory_;
	
EndFunction

Function RunTempProcess() Export
	
	Process = Factory.CreateProcess();
	TempFile = Factory.CreateTempFile();
	
EndFunction