extends Object
class_name _007_006_SPAWN_TILE



func getValueToString_quack() -> String :  return "change to alternate Texture"
func getName_quack()          -> String :  return "SPAWN_TILE"








static func run(ent:Entity,performance:Array) -> void : 
	var newEnt = API_001_Atlas.getTileByTextureID(performance[0])
	API_002_Tilemap.swapInEntity(ent,newEnt)







 
static func getDoc():
	return {
		
		"toShort"          : "spawn Tile",
		"keyword"          : "U_SPAWN_TILE",
		"name"             : "Spawns Tile",

		"unit"             : "EFFECT",    
		"stat"             : "STAT_MOD",

		"toString"         : "Spawn Tile by TextureID",

		"inputModule"      : "TEXTURE"

	}
