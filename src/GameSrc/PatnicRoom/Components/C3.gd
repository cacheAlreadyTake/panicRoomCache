extends Component
class_name C_3_LAYER

var value: String

func _init(valuePara:String):
	self.name = "C_3_LAYER"
	value = valuePara




static func name_quack():      return "C_3_LAYER"
static func dioJSONType_quack(): return "STRING"


# FUNC AUTO_DOC          
static func getAutoDoc(): return{
	"suggestion"  : "Magics and Matrix are not implemented yet!",
	"description" : "Determinds on which layer the entity is indexed on Map",
	"validInputs" : ENUM.SOKRATILES.LAYER.keys(),
	"validType"   : "STATIC_LIST",
	"nameToShow"  : "Layer",
}