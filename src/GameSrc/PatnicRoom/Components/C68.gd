extends Component
class_name C_68_KITVENTORY


var listOfKits: Dictionary = {}

func _init(para) -> void:
	self.name = "C_68_KITVENTORY"
	for kitPart in para:
		if kitPart is KitPartEntity: listOfKits[kitPart.index()] = kitPart
		else:listOfKits[kitPart] = API_001_Atlas.KitParts().getDirectByAtlas(kitPart)



func getKitSetDict():                  			return listOfKits

func getKitSetByString(kitToString:String):    	return listOfKits[kitToString]
func getKitSetByNr(kitsetNr:int):      			return listOfKits.values()[kitsetNr]


func addKitSet(kitset):
	var kitPartEnt
	if kitset is String: 		kitPartEnt = API_001_Atlas.getKitByDrirectName(kitset)
	if kitset is KitPartEntity: kitPartEnt = kitset
	
	if is_instance_valid(kitPartEnt):
		listOfKits[kitPartEnt.index()] = kitPartEnt




static func name_quack():          return "C_68_KITVENTORY"
static func dioJSONType_quack():   return "ARRAY"
static func getAutoDoc():
	return{
		"suggestion"  : "",
		"description" : "name of its fightingstyle",
		"validInputs" : [],
		"validType"   : dioJSONType_quack(),
		"nameToShow"  : "role description",
}
