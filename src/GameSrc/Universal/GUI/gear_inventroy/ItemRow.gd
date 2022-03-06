extends Control


var index

func _on_Button_pressed() -> void:
	API_005_Player.currentChar.getComp("C_68_KITVENTORY").listOfKits.erase(index)
	var kitEnt = API_001_Atlas.getKitByDrirectName(index)
	API_005_Player.stationSetter.setKitPartToMod(kitEnt)
	
	var part
	if kitEnt.partType() == ENUM.KITS.PARTS.MOD      : part = "Mod"
	if kitEnt.partType() == ENUM.KITS.PARTS.APPENDIX : part = "Appendix"
	
	var previewNode = get_node("/root/Node2D/kitset_overview/parent/"+part)
	
	previewNode.get_node("Name/Text").text    = kitEnt.name()
	previewNode.get_node("Desc/Text").bbcode_text    = "[color=grey]"+kitEnt.decription()
	previewNode.get_node("Summary/Text").bbcode_text = "[color=grey]"+kitEnt.mechanicalSummary()
	
	
	get_node("/root/Node2D/kitset_overview/Build").visible = true
	var cache = get_node("/root/Node2D/kitset_overview/parent/Window/Frame2")
	get_node("/root/Node2D/kitset_overview/parent/Window/Frame2").visible = true
	get_node("/root/Node2D/kitset_overview/parent/Merge").visible = true
