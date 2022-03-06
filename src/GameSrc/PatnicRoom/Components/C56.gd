extends Component
class_name C_56_GEAR


var listOfItems: Dictionary = {}
var carriageCapacity: int

func _init():
	name = "C_56_GEAR"
func getItem(itemName:String):
	return listOfItems[itemName]

func addItem(item):
	if listOfItems.size() <= carriageCapacity:
		listOfItems[item.to_string()] = item

		

########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "name of its fightingstyle",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Gear",
}
static func name_quack():      return "C_56_GEAR"
static func dioJSONType_quack(): return "NULL"
