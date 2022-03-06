extends Node
class_name _008_KitSetMerger


# ----- MAIN --------------------------------------------------------------------- ##

func mergeKitParts(kitparts:Array) -> KitSetEntity :
	var kitSetEnt = KitSetEntity.new()
	
	for part in kitparts:
		if part is String : part = API_001_Atlas.getKitByDrirectName(part)
		
		if is_instance_valid(part) or part != "NULL":
			if part is BaseKitPartEntity     :   kitSetEnt.base = part
			if part is ModKitPartEntity      :   kitSetEnt.mod = part
			if part is AppendixKitPartEntity :   kitSetEnt.appendix = part
	
	kitSetEnt.event = kitSetEnt.base.event()
	kitSetEnt.toString = getToString(kitSetEnt)
	if is_instance_valid(kitSetEnt.mod):   loadModPart(kitSetEnt)
	
	for comp in [C_53_SELECTED_POSITIONS,C_54_SELCTED_ENTITIES,C_55_TRIGGERABLE_ENTITIES] : kitSetEnt.addComponent(comp.new())
	
	return kitSetEnt




func loadModPart(kitSetEnt:KitSetEntity) -> void :
	var toMod = kitSetEnt.mod.event().main()["DATA"]
	var event = kitSetEnt.base.event().main()
	if toMod.has("MODIFICATION") : modifyMod(toMod,event)
	if toMod.has("ADDITION")     : addMod(toMod,event)
	if toMod.has("DELETION")     : deleteMod(toMod,event)



func getToString(kitset:KitSetEntity):
	var kitToString = ""
	if is_instance_valid(kitset.mod)      : kitToString +=          "["+kitset.mod.name()      + "] "
	if is_instance_valid(kitset.base)     : kitToString +=          "["+kitset.base.name()     + "] "
	if is_instance_valid(kitset.appendix) : kitToString += " of [" + kitset.appendix.name()+ "] "
	return kitToString







func addMod(toMod:Dictionary,event:Dictionary) -> void :
	for mod in toMod["ADDITION"]: 
		var cache = mod.duplicate(true)
		var section = cache.pop_front() 
		var package = cache.pop_front()
		event[section][package].append(cache)


func deleteMod(toMod:Dictionary,event:Dictionary) -> void :
	for mod in toMod["DELETION"]: 
		var cache = mod.duplicate(true)
		var section = cache.pop_front() 
		var package = cache.pop_front()
		for step in event[section][package]:
			if cache == step:
				event[section][package].erase(step)



func modifyMod(toMod:Dictionary,event:Dictionary) -> void :
	for mod in toMod["MODIFICATION"]: 
		var cache = mod.duplicate(true)
		var section = cache.pop_front() 
		var package = cache.pop_front()
		for nr in event[section][package].size()-1:
			var step = event[section][package][nr]
			if cache.size() == step.size():
				if cache[0] == step[0] and cache[1] == step[1]:
					event[section][package][nr] = cache



