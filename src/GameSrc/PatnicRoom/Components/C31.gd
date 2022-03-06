extends Component
class_name C_31_KIT_CAT_TYPE

var value

func _init(valuePara):
	name = "C_31_KIT_CAT_TYPE"
	value = valuePara



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "type of kit of the Surv9",
	"validInputs" : ENUM.KITS.CATEGORY.keys(),
	"validType"   : "STATIC_LIST",
	"nameToShow"  : "kit Category",
}
static func name_quack():      return "C_31_KIT_CAT_TYPE"
static func dioJSONType_quack(): return "STRING"