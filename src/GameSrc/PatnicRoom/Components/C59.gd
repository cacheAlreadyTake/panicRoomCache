extends Component
class_name C_59_KIT_MOD_CHANGE


var value = []


func _init(valuePara):
	name="C_59_KIT_MOD_CHANGE"
	value = valuePara



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "Metadata for ModKitPart",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Mod KitSet Data",
}
static func name_quack():      return "C_59_KIT_MOD_CHANGE"
static func dioJSONType_quack(): return "ARRAY"
