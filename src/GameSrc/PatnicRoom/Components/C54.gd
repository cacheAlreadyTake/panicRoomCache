extends Component
class_name C_54_SELCTED_ENTITIES

var value = []

func _init():
	name = "C_54_SELCTED_ENTITIES"


func reset(): value = []
func add(arrToCache:Vector2): value.append(arrToCache)
 


########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "Chached selects for later use",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Selected Tiles",
}
static func name_quack():      return "C_54_SELCTED_ENTITIES"
static func dioJSONType_quack(): return "NULL"
