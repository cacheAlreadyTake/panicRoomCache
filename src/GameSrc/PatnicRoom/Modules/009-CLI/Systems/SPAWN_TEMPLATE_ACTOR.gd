extends Node
class_name _API_017_Cmd_SpawnTemplateActor




static func run(parameter:Array):
	var cache = API_005_Player.currentChar.pos()
	var saniticedPos = Vector2(cache.x+2,cache.y+2)
	
	var templateName = parameter[0]
	
	var template = API_001_Atlas.ActorTemplateAtlas()[templateName]
	var ent = API_011_ProcgenActor.RNGenerateBasicActor(template)
	
	ent.setPos(saniticedPos)  
	SokraTiles.Actors_on_map[ent.pos()] = ent
	SokraTiles.getActor().entsOnMap[ent.pos()] = ent



