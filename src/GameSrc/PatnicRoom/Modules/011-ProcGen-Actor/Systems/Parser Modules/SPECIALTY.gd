extends Node
class_name _SPECIALTY


static func run(value):
	match value.keys()[0]:
		"INDEX"                 : return getIndex(value["INDEX"])
		"FOCUSED_M_TYPE"        : return getMType(value["FOCUSED_M_TYPE"])
		"SOCIAL_HIRACHY"        : pass
		"BEHAVIOUR"             : pass
		"TIER"                  : pass




static func getMType(arrOfMType):
	var arrToReturn = []
	var cachedAtlas = API_001_Atlas.RoleAtlas().values()
	
	for atlasEntry in cachedAtlas:
		for mTypeEntry in arrOfMType:
			if mTypeEntry == atlasEntry.getCompValue("C_37_M_TYPE"): 
				arrToReturn.append(atlasEntry)
	 
	return arrToReturn




static func getIndex(arrOfIndex):
	var arrToReturn = []
	
	for indexName in arrOfIndex:
		var cache = API_001_Atlas._specialty.getTileByTextureID(indexName)
		arrToReturn.append(cache)
	
	return arrToReturn










