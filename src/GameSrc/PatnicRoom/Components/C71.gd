extends Component
class_name C_71_LEC_META_BY


var value: String

func _init(para) -> void:
	self.name = "C_71_LEC_META_BY"
	value = para



static func name_quack():          return "C_71_EVENTT_BY"
static func dioJSONType_quack():   return "STRING"
static func getAutoDoc():
	return{
		"suggestion"  : "",
		"description" : "name of its fightingstyle",
		"validInputs" : [],
		"validType"   : dioJSONType_quack(),
		"nameToShow"  : "role description",
}
