extends Button



func _on_press(kitPartEnum,modeEnum):
	if kitPartEnum == ENUM.KITS.PARTS.BASE and modeEnum == ENUM.KITS.STATION_MODE.REMOVE: clearSlot()
	else:   
		API_005_Player.stationSetter.setMode(modeEnum)
		selectKitPartToAdd(kitPartEnum)


func selectKitPartToAdd(kitPartEnum):
	var kitPartsToShow = []
	
	var allKitParts = API_005_Player.getAllKitParts()
	var kitsetToBuild = get_node("/root/Node2D/kitset_overview/parent").kitSetEnt
	
	for kitpart in allKitParts:
		var test = [kitpart.family(),kitsetToBuild.base.family(),kitpart.partType()]
		if  kitpart.family() == kitsetToBuild.base.family() and kitPartEnum == kitpart.partType():
			kitPartsToShow.append(kitpart)
			
	get_node("/root/Node2D/build_selection/ScrollContainer").loadItems(kitPartsToShow)
	get_node("/root/Node2D/build_selection").visible =true




func clearSlot():
	API_005_Player.getCurrent_005_Common_Stationetter().setOnDefault()
	
	var cache = API_005_Player.getCurrentStation().kitset.toString
	API_005_Player.removeGearedKitSet(cache)
	API_005_Player.append_005_Common_Kitventory(cache)
	
	get_node("/root/Node2D/kitset_overview/parent").resetKitPart()
	get_node("/root/Node2D").loadPlayerGearedKitsets()
	get_parent().get_parent().get_parent().visible = false
