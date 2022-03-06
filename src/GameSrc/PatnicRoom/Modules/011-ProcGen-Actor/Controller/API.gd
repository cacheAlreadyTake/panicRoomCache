extends Node
# BOOKMARK[epic=Modules] 011_Procgen_Actor                                       

# ----- INITIALICE ----------------------------------------------------------- ##
 
var createNPCProcess 
var entMan


func _init() :
	self.name = "API_0007_ProcgenActor"

	entMan =_03_00_EntityManager.new()
	createNPCProcess = _7_EntMan_Actor.new()


# ----- GENERATION ----------------------------------------------------------- ##




func removeActorFromGame(ent:ActorEntity):
	var arrOfComps = ent.dictOfComps.keys()
	var arrOfConds = ent.dictOfConds.keys()
	

	for i in ent.dictOfComps.size():
		if ent.dictOfComps.has(arrOfComps[i]):
			ent.dictOfComps[arrOfComps[i]].free()
	

	for i in ent.dictOfConds.size():
		if ent.dictOfConds.has(arrOfConds[i]):
			if is_instance_valid(ent.dictOfConds[arrOfConds[i]]):ent.dictOfConds[arrOfConds[i]].queue_free()
	
				
	SokraTiles.getActor().entsOnMap.erase(ent.get_instance_id())
	SokraTiles.getMeatInteract()
	ent.free()


func createActorTemplate(toConvert):
	return _011_Hub_Template.run(toConvert)
	

func RNGenerateBasicActor(templateForGeneration):
	return entMan.RNGeneratBasicActor(templateForGeneration)
