extends Control


var listOfKitSets = []


func loadKitsets(kitsetsToLoad:Array,kitsetsToShow:int) -> void:
	reset()
	hideNotReachedKitSetSlots(kitsetsToShow)
	
	for i in range (0,kitsetsToLoad.size()):
		
		var kitSetNode   = getKitsetByNr(i)
		var kitSetEntity = kitsetsToLoad[i]
		
		if is_instance_valid(kitSetEntity): fillEntry(kitSetNode,kitSetEntity)



func fillEntry(kitSlot:Control,kitset):
	kitSlot.get_node("Mtype/RichTextLabel").bbcode_text       = kitset.base.mType()
	kitSlot.get_node("category/RichTextLabel").bbcode_text    = kitset.base.catType()
	kitSlot.get_node("base/RichTextLabel").bbcode_text        = kitset.base.name()
	kitSlot.get_node("Family/RichTextLabel").bbcode_text      = kitset.base.family()
	
	if is_instance_valid(kitset.mod): kitSlot.get_node("mod/RichTextLabel").bbcode_text = kitset.mod.name()
	if is_instance_valid(kitset.appendix): kitSlot.get_node("appendix/RichTextLabel").bbcode_text  = kitset.appendix.name()
	
	listOfKitSets.append(kitset)



func reset():
	for i in range(0,10):
		var currentRow = getKitsetByNr(i)
		for nodeName in ["Mtype","category","appendix","mod","base"]:
			currentRow.get_node(nodeName+"/RichTextLabel").bbcode_text = ""



func hideNotReachedKitSetSlots(maxKitsets): 
	var kitsetNode = get_node("VBoxContainer")
	for i in range(maxKitsets,10):  kitsetNode.get_node(str(i)).visible = false
	



func kitslot_pressed(extra_arg_0: int) -> void:
	for entry in get_node("/root/Node2D/kit_effect_details").get_children(): entry.queue_free() 
	
	var clickedKit = getKitsetByNr(extra_arg_0)
	if clickedKit.get_node("block").visible == false:
		
		var kitModScene = get_node("/root/Node2D/kitset_overview")
		kitModScene.get_node("parent").loadKitset(listOfKitSets[extra_arg_0])
		kitModScene.visible = true
		#get_node("/root/kitset_overview/parent").loadKitset(listOfKitSets[extra_arg_0])
	API_005_Player.stationSetter.setKitset(listOfKitSets[extra_arg_0])





func getKitsetByNr(nr:int):
	return get_node("VBoxContainer/"+str(nr))

