extends Control


func _ready() -> void:
	var cache = API_001_Atlas.getKitByDrirectName("X_H_1")
	loadEffect(cache.effectReference(),0)
	


func loadEffect(effect:EffectEntity,slotNr:int):
	var effectSlot = getSlotByNr(effect,slotNr)
	
	get_node("Trigger").distribute(effectSlot.triggerBase,effectSlot.triggerSpecific)
	get_node("Time").distribute(effect)
	get_node("Space").distribute(effectSlot.space)
	get_node("Effect").distribute(effectSlot.effectCondition,effectSlot.effectStatmod)
	




static func getSlotByNr(effect:EffectEntity,slotNr:int):
	match slotNr:
		0:   return effect.spawnComponent
		1:   return effect.onsetComponent
		2:   return effect.hitComponent 
		3:   return effect.offsetComponent





