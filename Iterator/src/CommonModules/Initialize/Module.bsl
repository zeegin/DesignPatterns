#Region Public

Function Init() Export
	
	Collection = DataProcessors.WordsCollection.Create();
	Collection.Add("First");
	Collection.Add("Second");
	Collection.Add("Third");
	
	While Collection.Iterator(True).Next() Do
		Value = Collection.Iterator().Value();
	EndDo;
	
	// Reverse itarative
	// = Third
	// = Second
	// = First
		
EndFunction

#EndRegion

