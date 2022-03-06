extends Node




func _ready()-> void:
	Alecandria_Parser_LecToEnt_Hub.parseGameData()
	API_001_Atlas.sortKitpartsAtlas()
	
	var cacheKit = API_001_Atlas.getKitByDrirectName("X_H_1")
	var cacheEvent = cacheKit.getCompValue("C_49_EVENT_REFERENCE")
	print("LEC TEST\n----\n"+getEntToLec(cacheEvent)+"\n----")






func getEntToLec(ent)         -> String     : return Alecandria_Parser_EntToLec_Hub.parseEntToString(ent)
func getKeywordHighlighting() -> Dictionary : return _ALECandria_Keywords.getDefault()
func getContextualKeywords()  -> Dictionary : return _ALECandria_Keywords.getDynamic()



