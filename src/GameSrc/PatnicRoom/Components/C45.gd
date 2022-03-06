extends Component
class_name C_45_CHARACTER_NAME

var value: String

func _init(valuePara:String):
	name = "C_45_CHARACTER_NAME"
	value = valuePara


	
########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "the by parents given name,used outsides the Shadows",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Character name",
	"configKey"   : "name"
}
static func name_quack():      return "C_45_CHARACTER_NAME"
static func dioJSONType_quack(): return "STRING"
