#Region FormEventHandlers

&AtClient
Procedure NotificationProcessing(EventName, Parameter, Source)
	
	If Source <> ThisObject Then
		Return;
	EndIf;
	
	If EventName = "UserChanged" Then
		// Do something...
	EndIf;
	
	// Etc...
	
EndProcedure

#EndRegion

#Region FormHeaderItemsEventHandlers

&AtClient
Procedure UserOnChange(Item)
	
	Notify("UserChanged", Item, ThisObject);
	
EndProcedure

&AtClient
Procedure EmailOnChange(Item)
	
	Notify("EmailChanged", Item, ThisObject);
	
EndProcedure

&AtClient
Procedure CountryOnChange(Item)
	
	Notify("CountryChanged", Item, ThisObject);
	
EndProcedure

#EndRegion

#Region FormCommandsEventHandlers

&AtClient
Procedure OK(Command)
	
	Notify("OKClicked", Command, ThisObject);
	
EndProcedure

&AtClient
Procedure Cancel(Command)
	
	Notify("CancelClicked", Command, ThisObject);
	
EndProcedure

#EndRegion
