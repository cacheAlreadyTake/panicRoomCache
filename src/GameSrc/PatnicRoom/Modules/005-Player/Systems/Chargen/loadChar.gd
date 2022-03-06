extends Node
class_name _005_LoadChar





static func generateNewSaveState(chargenDict:Dictionary) -> void : 
	var dirManager = Directory.new()
	dirManager.make_dir("res://Config/savestate/"+chargenDict["name"])
	
	var fileManager = File.new()
	fileManager.open("res://Config/savestate/template/common.json",File.READ)
	var commonContent = JSON.parse(fileManager.get_as_text()).result
	fileManager.close()
	
	fileManager.open("res://Config/savestate/"+chargenDict["name"]+"/common.json", File.WRITE)
	fileManager.store_line(JSON.print(commonContent,"\t"))
	fileManager.close()
	
	fileManager.open("res://Config/savestate/"+chargenDict["name"]+"/char 1.json", File.WRITE)
	fileManager.store_line(JSON.print(chargenDict,"\t"))
	fileManager.close()
	
	
	parse(chargenDict["name"],1)



static func parse(folderName,charNr):
	var filePath = "res://Config/savestate/"+folderName
	var ent = PlayerEntity.new()

	var common    = loadCommonPart(filePath)
	var character = loadChar(filePath,1) 

	addCompsToEnt(ent,common)
	addCompsToEnt(ent,character)

	ent.inventory.initialice(ent)
	ent.kitventory().initialice(ent)
	ent.stats().initialice(ent)
	API_005_Player.setIndirectStats(ent)



	var cache = API_005_Player.startingKitsets

	if cache is Array:
		for kitset in cache:
			if kitset.count("NULL") != 3: 

				var kitsetArr = []
				for kitpart in kitset:
					if kitpart != "NULL": kitsetArr.append(API_001_Atlas.getKitByDrirectName(kitpart))
					else: kitsetArr.append("Null")

				var kitsetEnt = API_008_KitSet.getMergedKitsets(kitsetArr)
				ent.kitventory().kitsets().append(kitsetEnt)


	API_005_Player.currentChar = ent




static func loadCommonPart(filePath):
	var dict       = Util.JSONParser.fileToDictionary(filePath+"/common.json")
	var entContent = {}

	entContent["C_9_CREDITS_ACCOUNT"]         = dict["credits"]
	#entContent["C_X_ARCHIVEMENTS"]           = dict["archivements"]
	#entContent["C_X_RESSOURCES"]             = dict["ressources"]
	#entContent["C_X__005_Common_Cloudprinter_INVENTORY"] = dict["_005_Common_Cloudprinter storage"]
	#entContent["C_X_UNICYCLER_LICENSES"]     = dict["unicycler licenses"]


	var cacheAlt = []
	for kitIndex in dict["kitventory"]:   cacheAlt.append(API_001_Atlas.getKitByDrirectName(kitIndex))
	entContent["C_68_KITVENTORY"] = cacheAlt


	return entContent




static func loadChar(filePath,nr):
	var dictOfChar  = Util.JSONParser.fileToDictionary(filePath+"/char "+str(nr)+".json")
	var entContent  = {}
	var compsToLoad = [
		"C_45_CHARACTER_NAME"     , "C_44_STREETNAME" , "C_11_RACE_NAME"        , "C_2_TEXTURE_ID"   ,
		"C_19_ATTRIBUTES"         , "C_20_SKILLBLOCK" , "C_51_PLAYER_KITSETS"   , "C_25_MAX_KITSETS" ,
		"C_39_KITSLOT_PROGRESSION","C_46_ACTOR_ITEMS" , "C_41_PERK_PROGRESSION"
	]

	for compToString in compsToLoad :
		var configKey    = _Comp.getComponents()[compToString].getAutoDoc()["configKey"]
		entContent[compToString] = dictOfChar[configKey]

	return entContent



static func addCompsToEnt(playerEnt,compsToLoad):
	var compToString = compsToLoad.keys()
	var compValues = compsToLoad.values()

	for i in compsToLoad.size():
		var comp = DemokrECTS.getComponentClass(compToString[i])
		var compInstance = comp.new(compValues[i])

		playerEnt.addComponent(compInstance)







