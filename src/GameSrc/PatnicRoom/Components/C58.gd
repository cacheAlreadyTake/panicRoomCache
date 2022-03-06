extends Component
class_name C_58_ALTERNATIVE_TEXTURES


var value


func _init(valuePara:String):
	name="C_58_ALTERNATIVE_TEXTURES"
	value=valuePara


	
########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "Can be swapped by change statmode",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Alternative Textures",
}
static func name_quack():      return "C_58_ALTERNATIVE_TEXTURES"
static func dioJSONType_quack(): return "STRING"
