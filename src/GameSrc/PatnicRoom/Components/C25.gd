extends Component
class_name C_25_MAX_KITSETS

var value

func _init(valuePara=3):
	name = "C_25_MAX_KITSETS"
	value = valuePara	


func modValue(valuePara):
	value = value + valuePara

static func getAutoDoc(): return{
	"suggestion"  : "not counting Kitsets from Starting-cheat ",
	"description" : "current maxm of kitsets,integral to Char-progression",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Paintollerance",
	"configKey"   : "max kitsets"
}

static func dioJSONType_quack(): return "INTEGER"
static func name_quack(): return "C_25_MAX_KITSETS"
