extends Component
class_name C_18_ATTRIBUTEMOD

var value=0

func _init():
	name = "C_18_ATTRIBUTEMOD"



func modValue(valuePara):
	value+=int(valuePara)



########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "modul of C_19, we recommend C_19 for usage",
	"description" : "Single Attribute value of C_19",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Attribute mod",
}
static func name_quack():      return "C_18_ATTRIBUTEMOD"
static func dioJSONType_quack(): return "NULL"
