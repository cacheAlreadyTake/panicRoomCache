extends Component
class_name C_2_TEXTURE_ID

var value: String

func _init(valuePara:String):
	self.name = "C_2_TEXTURE_ID"
	value = String(valuePara)


static func name_quack():      return "C_2_TEXTURE_ID"
static func dioJSONType_quack(): return "STRING"

# FUNC AUTO_DOC          
static func getAutoDoc(): return{
	"suggestion"  : "*tilesetname*_*rownumber*_*collumnumber* of its picture in folder : GameData/Tiled/Tileset",
	"description" : "Name of the Texture to be shown",
	"validInputs" : API_001_Atlas.TileAtlas().keys(),
	"validType"   : "STATIC_LIST",
	"nameToShow"  : "Texture-ID",
	"configKey"   : "texture"
}
