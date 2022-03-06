extends Object
class_name _007_001_DEAL_PLAIN_DAMAGE



func getValueToString_quack() -> String :  return "deal X plain damage"
func getName_quack()          -> String :  return "DEAL_PLAIN_DAMAGE"



static func run(ent:Entity,performance:Array) -> void : 
	ent.getComp("C_57_HITPOINTS").value -= int(performance[0])
	
	if ent.getCompValue("C_57_HITPOINTS") <= 0:
		
		if ent is ActorEntity : API_011_ProcgenActor.removeActorFromGame(ent)
		
		if ent is InteractEntity :   
			var newEnt = API_001_Atlas.getTileByTextureID("Suburban_0_2")
			newEnt.position = ent.position
			API_002_Tilemap.swapInEntity(ent,newEnt)






static func getDoc():
	return {
		
		"toShort"          : "deal bio Damage",
		"keyword"          : "U_DEAL_PLAIN_DAMAGE",
		"name"             : "Deal plain damage",

		"unit"             : "EFFECT",    
		"stat"             : "STAT_MOD",

		"toString"         : "Deal damage to actors",

		"inputModule"      : "SLIDER"

	}
