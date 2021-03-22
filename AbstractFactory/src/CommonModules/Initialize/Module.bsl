#Region Public

Function Init() Export
	
	If IsWindows() Then
		ModuleFactory = WindowsFactory;
	Else
		ModuleFactory = LinuxFactory;
	EndIf;
	
	Application = DataProcessors.Application.Create();
	Application.Init(ModuleFactory);
	Application.RunTempProcess();
	
EndFunction

#EndRegion

#Region Private

// TODO: Implement it!
Function IsWindows()
	
	Return True;
	
EndFunction

#EndRegion