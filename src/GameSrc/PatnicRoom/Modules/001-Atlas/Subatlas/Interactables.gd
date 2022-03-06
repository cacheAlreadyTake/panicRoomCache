extends DemokrECTS_Atlas
class_name _001_Interactables


# ----- INITIALICE ----------------------------------------------------------- ##


func _init() :
	classOfEntries = InteractEntity
	indexComponent = C_2_TEXTURE_ID.name_quack()
	

func _ready():
	var tilesets = API_001_Atlas.TileSetAtlas().values()
	
	for currentTileset in tilesets:
		for currentTile in currentTileset:
			
			if currentTile.hasFlag(int(1)):  API_001_Atlas._interactables.addEntity(currentTile)



# ----- SETTER --------------------------------------------------------------- ##
	
	
	
	









