extends Entity
class_name C_76_EVENT_REFERENCE_DICT


var value: String

func _init(para) -> void:
	self.name = "C_76_EVENT_REFERENCE_DICT"
	value = para



static func name_quack():          return "C_76_EVENT_REFERENCE_DICT"
static func dioJSONType_quack():   return "STRING"
static func getAutoDoc():
	return{
		"suggestion"  : "",
		"description" : "name of its fightingstyle",
		"validInputs" : [],
		"validType"   : dioJSONType_quack(),
		"nameToShow"  : "role description",
}
