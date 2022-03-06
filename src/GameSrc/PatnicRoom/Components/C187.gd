extends Component
class_name C_187_TEST

var value: String

func _init(valuePara:String):
	self.name = "C_187_TEST"
	value = valuePara

########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): 
	return{
	"suggestion"  : "something offensive or hyperbolic,best case both",
	"description" : "is shown to the player in things like mousehover or onlook-action",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "lore-description",
}
static func name_quack():      return "C_187_TEST"
static func dioJSONType_quack(): return "STRING"
