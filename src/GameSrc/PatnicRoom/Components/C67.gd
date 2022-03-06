extends Component
class_name C_67_SURFACE_PROPERTIES

var value = []


func _init(valuePara):
	name="C_67_SURFACE_PROPERTIES"
	for i in valuePara.split(":"):
		value.append(int(i))



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "on a scale of 1 to 10",
	"description" : "quality of Item",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "tier",
}
static func name_quack():        return "C_67_SURFACE_PROPERTIES"
static func dioJSONType_quack(): return "ARRAY"
