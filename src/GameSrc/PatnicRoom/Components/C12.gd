extends Component
class_name C_12_ATLAS_INDEX

var value

var cached_C_69_KITSET_FAMILY 

func _init(valuePara):
	name="C_12_ATLAS_INDEX"
	value=valuePara
	
	if "__" in valuePara:cached_C_69_KITSET_FAMILY= valuePara.split("__")[0]
	else:cached_C_69_KITSET_FAMILY = str(valuePara)
	


#FUNC Family-Ccomponent = C_69_KITSET_FAMILY
func buildFamiliyComponent():
	if !owner.has("C_69_KITSET_FAMILY"):
		owner.addComponent(C_69_KITSET_FAMILY.new(cached_C_69_KITSET_FAMILY))




static func getAutoDoc(): return{
	"crossreference" : ["C_69_KITSET_FAMILY"],
	"suggestion"  : "",
	"description" : "determinds the mousehover text",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "role description",
}

static func dioJSONType_quack():
	return "STRING"
static func name_quack():      return "C_12_ATLAS_INDEX"
