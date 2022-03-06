extends Control


onready var modControle      = get_node("Mod")
onready var baseControle     = get_node("Base")
onready var appendixControle = get_node("Appendix")


func loadKitset(kitset:KitSetEntity): # BUG 
	for node in [get_node("Appendix"),get_node("Base"),get_node("Mod")]:resetKitPart(node)
	
	kitSetEnt = kitset
	if is_instance_valid(kitset.mod)      : 
		loadKitPart(kitset.mod, modControle)
		get_parent().get_node("Buttons/Mod/Add").visible    = false
		get_parent().get_node("Buttons/Mod/Remove").visible = true
		get_parent().get_node("Buttons/Mod/Exchange").visible    = true
	else:
		get_parent().get_node("Buttons/Mod/Add").visible    = true
		get_parent().get_node("Buttons/Mod/Remove").visible = false
		get_parent().get_node("Buttons/Mod/Exchange").visible    = false
		
	if is_instance_valid(kitset.base)     : 
		loadKitPart(kitset.base, baseControle)
		if !is_instance_valid(kitset.mod) and !is_instance_valid(kitset.mod): get_parent().get_node("Buttons/Base/Remove").visible = false 
		
	if is_instance_valid(kitset.appendix) : 
		loadKitPart(kitset.appendix, appendixControle)
		get_parent().get_node("Buttons/Appendix/Add").visible    = false
		get_parent().get_node("Buttons/Appendix/Remove").visible = true
		get_parent().get_node("Buttons/Appendix/Exchange").visible    = true
	else:
		get_parent().get_node("Buttons/Appendix/Add").visible    = true
		get_parent().get_node("Buttons/Appendix/Remove").visible = false
		get_parent().get_node("Buttons/Appendix/Exchange").visible    = false

var kitSetEnt

func loadKitPart(kitPart:KitPartEntity,node:Control):
	node.get_node("Name/Text").text    = kitPart.name()
	node.get_node("Desc/Text").bbcode_text    = kitPart.decription()
	node.get_node("Summary/Text").bbcode_text = kitPart.mechanicalSummary()
	node.get_node("Rarity/Text").bbcode_text = "[center]"+str(kitPart.rarity())+"/10 : "+ENUM.ITEMS.RARITY_TO_STRING.values()[int(kitPart.rarity())]
	#node.get_node("Cooldown/Text").bbcode_text = str(kitPart.cooldownTime())+" Turns Cooldown"



func resetKitPart(node:Control):
	node.get_node("Name/Text").text    = ""
	node.get_node("Desc/Text").bbcode_text    = ""
	node.get_node("Summary/Text").bbcode_text = ""
	node.get_node("Rarity/Text").bbcode_text = ""
	



func onBuildPressed() -> void:
	API_005_Player.stationSetter.confirmTask()
	get_node("/root/Node2D/Title").loadToString()


func showEffectDetails(kitPartName):
	pass



func _on_press(extra_arg_0: int, extra_arg_1: int) -> void:
	pass # Replace with function body.
