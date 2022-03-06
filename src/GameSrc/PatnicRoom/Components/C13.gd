extends Component
class_name C_13_ROLE_NAME

var value 

func _init(valuePara):
	name="C_13_ROLE_NAME"
	value=valuePara



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "Are used as Index for API_001_Atlas.ActorRole , CAPSLOCK is recommended",
	"description" : "toString of the Template name",
	"validInputs" : API_001_Atlas.RoleAtlas().keys(),
	"validType"   : "DYNAMIC_LIST",
	"nameToShow"  : "Role name",
}
static func name_quack():      return "C_13_ROLE_NAME"
static func dioJSONType_quack(): return "STRING"