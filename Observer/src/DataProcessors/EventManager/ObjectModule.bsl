Var Listeners;

Procedure Subscribe(Subscriber) Export
	
	Listeners.Insert(Subscriber, True);
	
EndProcedure

Procedure Unsubscribe(Subscriber) Export
	
	Listeners.Delete(Subscriber);
	
EndProcedure

Procedure NotifySubscrbers(Data) Export
	
	For Each Listener In Listeners Do
		Listener.Update(Data);
	EndDo;
	
EndProcedure

Listeners = New Map;