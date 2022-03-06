extends Component
class_name C_69_KITSET_FAMILY


var value: String

func _init(para) -> void:
	self.name = "C_69_KITSET_FAMILY"
	value = para



static func name_quack():          return "C_69_KITSET_FAMILY"
static func dioJSONType_quack():   return "STRING"
static func getAutoDoc():
	return{
		"suggestion"  : "",
		"description" : "Index of the BaseKitPart",
		"validInputs" : [],
		"validType"   : dioJSONType_quack(),
		"nameToShow"  : "KitSetFamily",
}
