extends Component
class_name C_46_ACTOR_ITEMS

var value = {}

func _init(valuePara={}):
	name = "C_46_ACTOR_ITEMS"
	value = valuePara


	
########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "often owned by an Actor",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "List of Items",
	"configKey"   : "gear"
}
static func name_quack():      return "C_46_ACTOR_ITEMS"
static func dioJSONType_quack(): return "STRING"
