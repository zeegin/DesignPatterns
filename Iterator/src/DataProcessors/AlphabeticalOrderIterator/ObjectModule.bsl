Var Collection;
Var Reverse;
Var Position;

#Region Public

Procedure Init(Collection_, Reverse_) Export
	
	Collection = Collection_;
	Reverse = Reverse_;
	Position = ?(Reverse, -1, 0);
	
	// Prapare itaration plan
	
EndProcedure

Function Next() Export
	
	// Implement itarate to next item
	
	Try
		Position = Position + ?(Reverse, -1, 1);
	Except
		Return False;
	EndTry;
	
	Return True;
	
EndFunction

Function Value() Export
	
	Return Collection[Position];
	
EndFunction

#EndRegion