extends Component
class_name C_14_SPECIALTY_NAME

var value 

func _init(valuePara):
	name="C_14_SPECIALTY_NAME"
	value=valuePara



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "Are used as Index for API_001_Atlas.ActorSpecialty , CAPSLOCK is recommended",
	"description" : "toString of the Template name",
	"validInputs" : [],
	"validType"   : "DYNAMIC_LIST",
	"nameToShow"  : "Specialty name",
}
static func name_quack():      return "C_14_SPECIALTY_NAME"
static func dioJSONType_quack(): return "STRING"
