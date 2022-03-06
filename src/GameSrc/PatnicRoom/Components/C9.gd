extends Component
class_name C_9_CREDITS_ACCOUNT


var value : int


func _init(valuePara):
	name="C_9_CREDITS_ACCOUNT"
	value = int(valuePara)



# FUNC AUTO_DOC          
static func getAutoDoc(): return{
	"suggestion"  : "Implemented but no Influence / Usage",
	"description" : "Amount of money in possesion",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Credits",
}
static func name_quack():      return "C_9_CREDITS_ACCOUNT"
static func dioJSONType_quack(): return "INTEGER"
