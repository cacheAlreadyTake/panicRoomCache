extends Component
class_name C_49_EVENT_REFERENCE

var value

func _init(valuePara):
	name = "C_49_EVENT_REFERENCE"
	value = valuePara



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "Is used to build EffectEntity",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "EffectEntity",
}
static func name_quack():      return "C_49_EVENT_REFERENCE"
static func dioJSONType_quack(): return "EFFECT"
