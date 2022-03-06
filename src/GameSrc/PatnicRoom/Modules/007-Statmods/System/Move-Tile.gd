extends Object
class_name _007_004_MOVE_SELECT



func getValueToString_quack() -> String :  return "change to alternate Texture"
func getName_quack()          -> String :  return "MOVE_SELECT"



static func run(ent,toPerform:Array): 
	if toPerform.has("REACH"):
		var currentPos = ent.pos() 
		var finalPos
		
		for nextTile in API_008_KitSet.selection.selects:
			if nextTile is ActorEntity or nextTile.has("C_1_IS_WALKABLE"): 
				finalPos = nextTile.pos()
			else: return
		SokraTiles.getActor().moveaActor(finalPos,ent)
		API_006_Condition.attachConditionToEnt(ent,"INCAPACITATED",2)
#		var direction = getDir()
#
#		for ent in API_008_KitSet.selection.triggers: SokraTiles.getPlayer().movePlayer(direction)
#		direction.clear()
#
#
#
#func getDir():
#	var playerPos = API_005_Player.currentChar.pos()
#	var targetPos = cache.pop_back()
#	var x = playerPos.x  - targetPos.x
#	var y = playerPos.y - targetPos.y
#
#	if x > 0 : return ENUM.SOKRATILES.DIRECTION_FOUR.EAST
#	if y < 0 : return ENUM.SOKRATILES.DIRECTION_FOUR.SOUTH
#	if x < 0 : return ENUM.SOKRATILES.DIRECTION_FOUR.WEST
#	if y > 0 : return ENUM.SOKRATILES.DIRECTION_FOUR.NORTH
#
#
#
#
#
#func checkForActorsToCharge(posOfPlayer,damage):
#	var johnyCache = SokraTiles.Actors_on_map.values().size()
#	for j in johnyCache:
#		var currentChar = SokraTiles.Actors_on_map.values()[j]
#		var pos = currentChar.pos()




static func getDoc():
	return {
		
		"toShort"          : "move user",
		"keyword"          : "U_MOVE_USER",
		"name"             : "Move User",

		"unit"             : "EFFECT",    
		"stat"             : "STAT_MOD",

		"toString"         : "WIP",

		"inputModule"      : "VOID"

	}
