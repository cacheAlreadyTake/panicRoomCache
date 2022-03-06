extends SokraTiles_Chunk_Basic
class_name SokraTiles_Chunk_Actors


var dirtyTiles = []

func initialice(layerEnum,layerNode) -> void:
	var layerToParse = SokraTiles.getLayer(layerEnum)
	SokraTiles.addChunkToKnownLayers(layerEnum,layerNode)




func moveActor(directionEnum,ent):
	var newPos = ent.pos()
	match directionEnum:
		ENUM.SOKRATILES.DIRECTION_FOUR.NORTH : newPos.y -= 1
		ENUM.SOKRATILES.DIRECTION_FOUR.WEST  : newPos.x += 1
		ENUM.SOKRATILES.DIRECTION_FOUR.EAST  : newPos.x -= 1
		ENUM.SOKRATILES.DIRECTION_FOUR.SOUTH : newPos.y += 1
	
	var interact = SokraTiles.getMeatInteract().getEntByPos_quack(newPos)
	if !is_instance_valid(interact) or ent.hasFlag("F_CHEAT_1_NO_CLIP"):moveaActor(newPos,ent)
	elif interact.isWalkable():moveaActor(newPos,ent)






func moveaActor(newPos,ent):
	var cache = ent.pos()
	entsOnMap.erase(cache)
	set_cell(cache.x,cache.y,-1)
	ent.setPos(newPos)
	entsOnMap[newPos]=ent
	_drawCell(ent.textureID(), newPos)
