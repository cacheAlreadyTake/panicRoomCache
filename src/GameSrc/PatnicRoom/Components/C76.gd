extends Entity
class_name C_73_KITSET_OF_EVENT


var value: KitSetEntity

func _init(para) -> void:
	self.name = "C_73_KITSET_OF_EVENT"
	value = para



static func name_quack():          return "C_73_KITSET_OF_EVENT"
static func dioJSONType_quack():   return "KitSetEntity"
static func getAutoDoc():
	return{
		"suggestion"  : "",
		"description" : "name of its fightingstyle",
		"validInputs" : [],
		"validType"   : dioJSONType_quack(),
		"nameToShow"  : "role description",
}
