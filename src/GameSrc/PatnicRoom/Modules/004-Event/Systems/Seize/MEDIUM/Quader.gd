extends Node 
class_name _004_Seize_MediumQuad





static func run():
	var selection = API_008_KitSet.selection
	for source in selection.source:
		for height in range(33):
			var downleft = source
			downleft.x -= height
			downleft.y += height
			_004_Seize_MediumUniversal.run(30,ENUM.SOKRATILES.DIRECTION_FOUR.EAST,downleft)



static func runSelect():
	var pos = API_008_KitSet.selection.source[0]
	pos.x -= 32
	pos.y -= 32
	for x in range (64):
		pos.y += 1
		_004_Seize_MediumUniversal.run(64,ENUM.SOKRATILES.DIRECTION_FOUR.EAST,pos)
	
	var trimmed = {}
	for entry in API_008_KitSet.selection.kitset.selectedPositions():
		trimmed[entry] = ""
	API_008_KitSet.selection.kitset.getComp("C_53_SELECTED_POSITIONS").value = trimmed.keys()



