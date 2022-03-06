extends Control


func initialice(symbols):
	if API_005_Player.stations.currentStation.isCounting: reminderToString()
	loadToString()
	loadLayerOfLogo()
	loadIcons(symbols)


func loadToString():   get_node("countdown").bbcode_text = "[center]"+loadCountdown()
func loadIcons(symbols):   for i in symbols.size(): get_node("Panel/"+str(i+1)).texture = load(symbols[i])


func loadLayerOfLogo():
	for station in ["Magic","Meat","Matrix"]: 
		get_node("Panel/Station title/"+station).visible = false
	
	var layer 
	match DavINCi.externalCachedInput:
		ENUM.SOKRATILES.M_TYPE.MAGIC:  layer = get_node("Panel/Station title/Magic")
		ENUM.SOKRATILES.M_TYPE.MEAT:   layer = get_node("Panel/Station title/Meat") 
		ENUM.SOKRATILES.M_TYPE.MATRIX: layer = get_node("Panel/Station title/Matrix")
	layer.visible = true






func loadCountdown(): 
	var station = API_005_Player.stations.currentStation
	
	if   !station.isCounting:                         return "[color=yellow]No task has been set!"
	elif  station.currentLength == station.maxLength: return "[color=green]Task has been finished!"
	else:                                             return "Task in process: [color=red]"+str(station.currentLength)+" / "+str(station.maxLength)



func reminderToString():
	var cache = API_005_Player.stations.currentStation
	var stringToInsert = ""
	
	stringToInsert += getMode(cache)
	stringToInsert += getKitPart(cache)
	stringToInsert += cache.kitpartToMod.getCompValue("C_6_NAME")
	stringToInsert += " for "
	stringToInsert += cache.kitset.base.getCompValue("C_6_NAME")
	
	get_node("reminder").bbcode_text = stringToInsert


func getMode(cache):
	match cache.mode:
		ENUM.KITS.STATION_MODE.ADD    : return "Adding "
		ENUM.KITS.STATION_MODE.CHANGE : return "Changing "
		ENUM.KITS.STATION_MODE.REMOVE : return "Removing "
		

func getKitPart(cache):
	match cache.kitpartToMod.getCompValue("C_38_KIT_PART_TYPE"):
		ENUM.KITS.PARTS.BASE     : return "Base "
		ENUM.KITS.PARTS.MOD      : return "Mod "
		ENUM.KITS.PARTS.APPENDIX : return "Appendix "
