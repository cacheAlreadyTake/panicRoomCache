extends Component
class_name C_41_PERK_PROGRESSION

var value
const neededForUpgrade = _Enum_Player.ROOMS_FOR_TRAIT_NEEDED
func _init(valuePara=0):
	name="C_41_PERK_PROGRESSION"
	value = valuePara
 
func increment():
	value += 1

########################
# --- AUTODOC -------- #
########################
static func getAutoDoc(): return{
	"suggestion"  : "",
	"description" : "X and Y on the tilemap",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "position",
	"configKey"   : "trait progression"
}
static func name_quack():      return "C_41_PERK_PROGRESSION"
static func dioJSONType_quack(): return "INTEGER"
