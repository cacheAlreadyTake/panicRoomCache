extends Node2D

var kitset:KitSetEntity
var metaValues = Rest_Form_Getter.getFormMeta()



func _ready():
	get_node("background").texture = Util.RNG.getRngBackground()
	Gameloop.scene                 = self
	var mTypeValues                = metaValues[DavINCi.externalCachedInput]
	swapToNewStation()
	get_node("Title").initialice(mTypeValues["symbols"])
	
	
	
	var maxKits = API_005_Player.currentChar.getCompValue("C_25_MAX_KITSETS")
	var kitSets = API_005_Player.currentChar._005_Common_Kitventory.gearedKitset.listOfKits.values()
	
	get_node("geared_kitset_table").loadKitsets(kitSets,maxKits)
	
	for i in kitSets.size():
		var cat = kitSets[i].base.catType()
		var currentStationCat = ENUM.KITS.CATEGORIES[DavINCi.externalCachedInput]
		
		if !currentStationCat.keys().has(cat):
			get_node("geared_kitset_table/Kitsets/VBoxContainer/"+str(i)+"/block").visible = true



func swapToNewStation():
	match DavINCi.externalCachedInput:
		ENUM.SOKRATILES.M_TYPE.MEAT   : API_005_Player._005_Common_Station.changeStation(ENUM.SOKRATILES.M_TYPE.MEAT)
		ENUM.SOKRATILES.M_TYPE.MAGIC  : API_005_Player._005_Common_Station.changeStation(ENUM.SOKRATILES.M_TYPE.MAGIC)
		ENUM.SOKRATILES.M_TYPE.MATRIX : API_005_Player._005_Common_Station.changeStation(ENUM.SOKRATILES.M_TYPE.MATRIX)



func buildKitset() -> void:
	API_005_Player.getCurrent_005_Common_Stationetter().confirmTask()
	get_node("Title").loadToString()
	get_node("Title").reminderToString()


func loadKitsetToString(kitSet):
	get_node("kitset to mod/kitset_to_string").loadKitset(kitSet)
	get_node("kitset to mod").visible = true





