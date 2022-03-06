extends Node
class_name _ROLE


static func run(value):
	match value.keys()[0]:
		"INDEX"                 : return getIndex(value["INDEX"])
		"FOCUSED_M_TYPE"        : return getMType(value["FOCUSED_M_TYPE"])
		"PREFERD_CHUNK_KEYWORD" : pass
	
	
	




static func getMType(arrOfMType):
	var arrToReturn = []
	var cachedAtlas = API_001_Atlas.RoleAtlas()
	
	for mType in arrOfMType:
		for entry in cachedAtlas.values():
			if entry.getCompValue("C_37_M_TYPE") == mType: 
				arrToReturn.append(entry)
		 
	return arrToReturn




static func getIndex(arrOfIndex):
	var arrToReturn = []
	
	for indexName in arrOfIndex:
		var cache = API_001_Atlas.Role().getTileByTextureID(indexName)
		arrToReturn.append(cache)
	
	return arrToReturn


