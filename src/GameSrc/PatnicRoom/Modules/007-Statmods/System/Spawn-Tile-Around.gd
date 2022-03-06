extends Object
class_name _007_005_SPAWN_TILE_AROUND



func getValueToString_quack() -> String :  return ""
#	var cache = API_001_Atlas.TileAtlas()[textureID].tileName()
#	return "spawn "+cache + " around" +"("+str(reach)+")"

func getName_quack()          -> String :  return "SPAWN_TILE_AROUND"



func run(toPerform:Array):
	for ent in API_008_KitSet.selection.triggers:
		var tilesToChange = []
		#var ent = SokraTiles.getMeatFloor().getEntByPos_quack( toPerform[3].pos() )
		var newEnt = API_001_Atlas.getTileByTextureID(toPerform[3])
		if !is_instance_valid(ent): ent = instance_from_id(ent)
		
		for x in (toPerform[5]*2)+1:
			for y in (toPerform[5]*2)+1:
				ent         = DemokrECTS.initialiceNewEntry(ent)
				var pos     = ent.pos()
				
				var newPosX = int(pos.x) + x - toPerform[5]
				var newPosY = int(pos.y) + y - toPerform[5]
				
				var newPos  = Vector2(newPosX,newPosY)
				ent.setPos(newPos)
				
				
				API_002_Tilemap.addEntOnTilemap(ent)
				#API_002_Tilemap.appendDirtyTiles(ent)





static func getDoc():
	return {
		
		"toShort"          : "spawn Tile around",
		"keyword"          : "U_SPAWN_TILE_AROUND",
		"name"             : "Spawns Tile around",

		"unit"             : "EFFECT",    
		"stat"             : "STAT_MOD",

		"toString"         : "Spawn Tile around by TextureID",

		"inputModule"      : "TEXTURE"

	}
