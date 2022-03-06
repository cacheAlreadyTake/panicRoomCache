extends Node
class_name _004_Seize_MediumSelect



static func run() -> Array:
	var toReturn = []
	var pos = API_005_Player.currentChar.pos()
	pos.x -= 32
	pos.y -= 32
	for x in range (64):
		pos.y += 1
		_004_Seize_MediumUniversal.run(64,ENUM.SOKRATILES.DIRECTION_FOUR.EAST,pos)
		toReturn += API_008_KitSet.selection.selects
		API_008_KitSet.selection.selects.clear()
	
#	var trimmed = {}
#	for entry in API_008_KitSet.selection.kitset.selectedPositions():
#		trimmed[entry] = ""
#	API_008_KitSet.selection.kitset.getComp("C_53_SELECTED_POSITIONS").value = trimmed.keys()
	
	return toReturn
