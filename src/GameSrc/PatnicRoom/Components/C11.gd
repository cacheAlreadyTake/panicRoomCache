extends Component
class_name C_11_RACE_NAME

var value 

func _init(valuePara):
	name="C_11_RACE_NAME"
	value=valuePara



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "Are used as Index for API_001_Atlas.ActorRace , CAPSLOCK is recommended",
	"description" : "toString of the Template name",
	"validInputs" : API_001_Atlas.RaceAtlas().keys(),
	"validType"   : "DYNAMIC_LIST",
	"nameToShow"  : "Race name",
	"configKey"   : "race"
}
static func name_quack():      return "C_11_RACE_NAME"
static func dioJSONType_quack(): return "STRING"
