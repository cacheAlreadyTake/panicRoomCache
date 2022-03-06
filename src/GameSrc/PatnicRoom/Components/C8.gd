extends Component
class_name C_8_LEC_META

var value: Dictionary

func _init(valuePara:Dictionary):
	self.name = "C_8_LEC_META"
	value = valuePara


static func name_quack():      return "C_8_LEC_META"
static func dioJSONType_quack(): return "STRING"

# FUNC AUTO_DOC          
static func getAutoDoc(): return{
	"suggestion"  : "*tilesetname*_*rownumber*_*collumnumber* of its picture in folder : GameData/Tiled/Tileset",
	"description" : "Name of the Texture to be shown",
	"validInputs" : API_001_Atlas.TileAtlas().keys(),
	"validType"   : "STATIC_LIST",
	"nameToShow"  : "MetaData of LEC",
}
