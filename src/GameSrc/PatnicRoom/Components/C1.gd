extends Component
class_name C_1_IS_WALKABLE

var value: bool

func _init(valuePara:bool):
	self.name = "C_1_IS_WALKABLE"
	value = valuePara



	
static func name_quack():      return "C_1_IS_WALKABLE"
static func dioJSONType_quack(): return "BOOLEAN"



# FUNC AUTO_DOC          
static func getAutoDoc(): 
	return{
	"suggestion"  : "Interactables are often but not neccesarilly unwalkable, Meat Tiles are",
	"description" : "determinds if an Actor can walk on this tile",
	"validInputs" : [],
	"validType"   : dioJSONType_quack(),
	"nameToShow"  : "Walkable",
}
