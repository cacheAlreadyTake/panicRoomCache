extends Component
class_name C_44_STREETNAME

var value: String

func _init(valuePara:String):
	name = "C_44_STREETNAME"
	value = valuePara


########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "unique Title",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Streetname",
	"configKey"   : "street-name"
}
static func name_quack():      return "C_44_STREETNAME"
static func dioJSONType_quack(): return "STRING"
