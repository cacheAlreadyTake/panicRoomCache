extends Component
class_name C_4_MAGIC_NOISE

var value: int

func _init(valuePara):
	name = "C_4_MAGIC_NOISE"
	value = int(valuePara)


	
# FUNC AUTO_DOC          
static func getAutoDoc(): return{
	"suggestion"  : "WIP, not implemented,has no influence at the moment",
	"description" : "Determinds the handicap for sourronding dice tosses",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Magic Noise",
}
static func name_quack():      return "C_4_MAGIC_NOISE"
static func dioJSONType_quack(): return "INTEGER"
