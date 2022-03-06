extends Node


# BOOKMARK[epic=Modules] 014_Behavior                                       



var inputMode: bool = true

var moduleAtlas : Dictionary



func _ready() -> void:
	_14_Bootstrapper.initialiceBehaviourModules()








func loopThroughActor():
	var actorsOnMap_Of_API007 = SokraTiles.Actors_on_map
	var actorKeys = actorsOnMap_Of_API007.keys()
	
	for i in actorsOnMap_Of_API007.size():
		var currentEnt = actorsOnMap_Of_API007[actorKeys[i]]
		if is_instance_valid(currentEnt):
			walk(currentEnt)
		
	#Signals.emit_signal("Actor_Turn_Finished",ENUM.SOKRATILES.ACTION_PHASE.NPC_DONE)



func walk(ent:ActorEntity):
	if !ent.hasFlag("F_19_ACTOR_CAN_NOT_MOVE"):
		var direction = Util.RNG.getRandomNumber(0,3)
		var directionEnum = ENUM.SOKRATILES.DIRECTION_FOUR.values()[direction]

		var actorLayer = SokraTiles.getActor()
		actorLayer._drawCell(ent.textureID(), ent.pos())
		
		actorLayer.moveActor(directionEnum,ent)
		actorLayer._drawCell(ent.textureID(),ent.pos())

	



func getModuleAtlas() -> Dictionary: return moduleAtlas



