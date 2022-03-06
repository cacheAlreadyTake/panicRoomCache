extends Object
class_name _007_003_EXCHANGE_TEXTURE



func getValueToString_quack() -> String :  return "change to alternate Texture"
func getName_quack()          -> String :  return "EXCHANGE_TEXTURE"



static func run(ent:Entity,performance:Array) -> void : 
	if ent.has("C_58_ALTERNATIVE_TEXTURES"):
		var cache = ent.getCompValue("C_58_ALTERNATIVE_TEXTURES")
		SokraTiles.getTilemapLayer(ent.layer()).drawCell_quack(cache,ent.pos())









static func closeTierOne(ent, modValue=0):return true
static func closeTierTwo(ent):return true



static func getDoc():
	return {
		
		"toShort"          : "alter Texture",
		"keyword"          : "U_EXCHANGE_TEXTURE",
		"name"             : "exchange Texture",

		"unit"             : "EFFECT",    
		"stat"             : "STAT_MOD",

		"toString"         : "Change Texture to C_58_ALTERNATIVE_TEXTURES",

		"inputModule"      : "BOOL"

	}
