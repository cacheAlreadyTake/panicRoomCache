extends Component
class_name C_0_DESCRIPTION

var value: String

func _init(valuePara:String):
	self.name = "C_0_DESCRIPTION"
	value = valuePara
 


static func name_quack():      return "C_0_DESCRIPTION"
static func dioJSONType_quack(): return "STRING"

# FUNC AUTO_DOC          
static func getAutoDoc(): 
	return{
	"suggestion"  : "Something offensive or hyperbolic, best case both",
	"description" : "Is shown to the player in things like mousehover or onlook-action",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Description",
}

