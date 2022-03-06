extends Node
class_name _004_Seize_MediumUniversal



static func run(reach:int,direction:int,source:Vector2) -> void :
	for i in range(reach): 
			var posMod = convertDirectionToVector(direction)
			var select = Vector2(source.x-posMod.x*i,source.y-posMod.y*i)
			API_008_KitSet.selection.selects.append(select)



static func convertDirectionToVector(directionEnum) -> Vector2 :
	var posMod : Vector2
	
	match directionEnum:
		ENUM.SOKRATILES.DIRECTION_FOUR.NORTH :   posMod = Vector2(0,1)
		ENUM.SOKRATILES.DIRECTION_FOUR.WEST  :   posMod = Vector2(1,0)
		ENUM.SOKRATILES.DIRECTION_FOUR.EAST  :   posMod = Vector2(-1,0)
		ENUM.SOKRATILES.DIRECTION_FOUR.SOUTH :   posMod = Vector2(0,-1)
	
	return posMod




