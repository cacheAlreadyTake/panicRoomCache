extends Node
class_name _004_Seize_MediumLinea



static func run() -> Array:
	var reach = API_008_KitSet.selection.reach as int
	for direction in ENUM.SOKRATILES.DIRECTION_FOUR.values():
		for source in [API_005_Player.currentChar.pos()]:
			_004_Seize_MediumUniversal.run(reach,direction,source)
	
	var trimmed = {}
	for entry in API_008_KitSet.selection.selects:
		trimmed[entry] = ""
	return trimmed.keys()





