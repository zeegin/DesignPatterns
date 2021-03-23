Var Collection;

#Region Public

Procedure Add(Value) Export
	
	Collection.Add(Value);
	
EndProcedure

Function Iterator(Reverse = False) Export
	
	Iterator = DataProcessors.AlphabeticalOrderIterator.Create();
	Iterator.Init(Collection, Reverse);
	Return Iterator;
	
EndFunction

#EndRegion

Collection = New Array;
