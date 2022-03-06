extends Node
class_name _03_00_EntityManager


func generateByArrayOfActors(actors:Array) -> void:
	for i in actors.size():
		var actor: ActorEntity = genereateSingleActor(actors[i]);
		SokraTiles.Actors_on_map[actor.get_instance_id()] = actor
		ArisPROCGENes.actorsOnMap.append(actor) 


func genereateSingleActor(actor:Dictionary) -> ActorEntity:
	var ent:ActorEntity = API_011_ProcgenActor.createNPCProcess._convertEnt_quack(actor,ActorEntity.new())
	ent.setPos(Vector2(actor["posX"],actor["posY"]))
	return ent

	
# BOOKMARK[epic=Entities_Process] Actor Entity -> Map 
func setActorOnTilemap(actor: ActorEntity) -> void:
	var pos = actor.position;
	var tets=SokraTiles.tilemap["layers"]["universal actors"]
	SokraTiles.tilemap["layers"]["universal actors"][pos.x][pos.y] = actor.tileName;











func RNGeneratBasicActor(toGenerate:ActorRngTemplateEntity):
	var mandatoryStats = [toGenerate.role(),toGenerate.race(),toGenerate.specialty()]
	var indexedResults = []
	
	var rng = RandomNumberGenerator.new()
	for type in mandatoryStats:
		
		var entrySize    = float(type.size())
		var randomNumber = rng.randi_range(0, entrySize)-1
		var result       = type[randomNumber]
		#var indexValue   = result.getCompValue("C_12_ATLAS_INDEX")
		
		indexedResults.append(result)
	
	
	var cache = {
		"C_12_FOR_RACE"      : indexedResults[1],
		"C_12_FOR_ROLE"      : indexedResults[0],
		"C_12_FOR_SPECIALTY" : indexedResults[2]
	}
	
	var ent = API_011_ProcgenActor.createNPCProcess._convertEnt_quack(cache,ActorEntity.new())
	SokraTiles.Actors_on_map[ent.get_instance_id()] = ent
	
	return ent
		
