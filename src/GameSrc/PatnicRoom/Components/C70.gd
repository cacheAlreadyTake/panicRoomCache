extends Component
class_name C_70_SELECTED_TARGET


var value: String

func _init(para) -> void:
	self.name = "C_70_SELECTED_TARGET"
	value = para



static func name_quack():          return "C_70_SELECTED_TARGET"
static func dioJSONType_quack():   return "STRING"
static func getAutoDoc():
	return{
		"suggestion"  : "",
		"description" : "name of its fightingstyle",
		"validInputs" : [],
		"validType"   : dioJSONType_quack(),
		"nameToShow"  : "role description",
}
