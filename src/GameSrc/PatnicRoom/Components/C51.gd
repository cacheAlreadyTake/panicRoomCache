extends Component
class_name C_51_PLAYER_KITSETS


var listOfKits: Dictionary = {}
var maxKits: int = 10

func _init(para=[]) -> void:
	self.name = "C_51_PLAYER_KITSETS"
	
	for kitSet in para:
		for i in kitSet.size():
			if kitSet[i] is String:
				if kitSet[i] != "NULL": kitSet[i] = API_001_Atlas.getKitByDrirectName(kitSet[i])
		
		var cache=API_008_KitSet.getMergedKitsets(kitSet)
		listOfKits[cache.toString]=cache



func getKitSetDict():                  			return listOfKits

func getKitSetByString(kitToString:String):    	return listOfKits[kitToString]




func getKitSetByNr(kitLevel):
	if int(kitLevel) < listOfKits.size():
		return listOfKits.values()[int(kitLevel)]

func addKitSet(kit):
	if listOfKits.size() <= maxKits:
		listOfKits[kit.toString] = kit


func removeKitset(kit):
	if listOfKits.has(kit):
		listOfKits.erase(kit)

static func name_quack():          return "C_51_PLAYER_KITSETS"
static func dioJSONType_quack():   return "ARRAY"
static func getAutoDoc():
	return{
		"suggestion"  : "",
		"description" : "list of kitsets",
		"validInputs" : [],
		"validType"   : dioJSONType_quack(),
		"nameToShow"  : "Actors KitSets",
		"configKey"   : "kitsets"
}
