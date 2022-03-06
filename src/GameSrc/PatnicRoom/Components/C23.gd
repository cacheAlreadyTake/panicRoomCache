extends Component
class_name C_23_CARRIAGE

var capacity
var inventory = []

func _init(valuePara):
	name = "C_23_CARRIAGE"
	capacity = valuePara


func addToInventory(entPara):
	if isInventoryFull():
		inventory.append(entPara)

func removeFromInventory(entPara):
	inventory.remove(entPara)


func isInventoryFull():
	return inventory.size <= capacity



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "Gets calculatet on runtime by Actors Attributes",
	"description" : "max units Actor can carry",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Carriage capacity",
}
static func name_quack():      return "C_23_CARRIAGE"
static func dioJSONType_quack(): return "INTEGER"
