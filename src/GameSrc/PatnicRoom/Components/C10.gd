extends Component
class_name C_10_PERKS

var description=[]

func _init(descriptionPara):
	name = "C_10_PERKS"
	description = descriptionPara



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "WIP, not implemented,has no influence at the moment",
	"description" : "Unique advantages of the Char",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Perks",
}
static func name_quack():      return "C_10_PERKS"
static func dioJSONType_quack(): return "ARRAY"
