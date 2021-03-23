#Region Public

Function Init(ObjectHTMLOrCOM) Export
	
	Editor = DataProcessors.Editor.Create();
	Editor.Data = "Something";
	Editor.Value = "Else";
	
	Snapshot = Editor.CreateSnapshot();
	
	// Serialize Snapshot to file, db, session etc.
	// Deserialize Snapshot from ...
	
	Editor = EditorSnapshot.Restore(Snapshot);
	
EndFunction

#EndRegion
