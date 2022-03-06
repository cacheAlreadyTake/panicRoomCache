extends Component
class_name _008_KitSelect





func setSelections(positions:Array) -> Array :
	var toReturn = []
	for layer in ENUM.SOKRATILES.SELECTABLE_LAYER.keys():
		var tilemapNode = SokraTiles.getTilemapLayer(layer)
		for position in positions:
			var ent = tilemapNode.getEntByPos_quack(position)
			if is_instance_valid(ent): toReturn.append(ent)
	return toReturn



func validateSelects(consideration:Array) -> Array :
	var toReturn = []
	for consi in consideration :
		var currentTriggered = API_004_Event.runConsideration(consi)
		if toReturn.empty(): toReturn=currentTriggered
		else: 
			var newArray = []
			for entry in currentTriggered: 
				if toReturn.has(entry):
					newArray.append(entry)
			toReturn = newArray
	return toReturn



func drawSelection(entsToDraw,texture) -> void : 
	var collectedPos = []
	for ent in entsToDraw:collectedPos.append(ent.pos())
	for pos in collectedPos:SokraTiles.getSelection().drawCell_quack(texture,pos)








