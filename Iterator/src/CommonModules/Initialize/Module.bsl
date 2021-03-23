#Region Public

Function Init() Export
	
	Collection = DataProcessors.WordsCollection.Create();
	Collection.Add("First");
	Collection.Add("Second");
	Collection.Add("Third");
	
	Iterator = Collection.Iterator(True);
	While Iterator.Next() Do
		Value = Iterator.Value();
	EndDo;
	
	// Reverse itarative
	// = Third
	// = Second
	// = First
	
EndFunction

#EndRegion

