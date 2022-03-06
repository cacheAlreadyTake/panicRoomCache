extends Component
class_name C_72_LEC_META_USE


var value: String

func _init(para) -> void:
	self.name = "C_72_LEC_META_USE"
	value = para



static func name_quack():          return "C_72_LEC_META_USE"
static func dioJSONType_quack():   return "STRING"
static func getAutoDoc():
	return{
		"suggestion"  : "",
		"description" : "name of its fightingstyle",
		"validInputs" : [],
		"validType"   : dioJSONType_quack(),
		"nameToShow"  : "role description",
}
