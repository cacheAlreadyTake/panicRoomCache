extends DemokrECTS_Atlas
class_name _001_Tiles


# ----- INITIALICE ----------------------------------------------------------- ##


var atlas_Tilesets = {}

func _init() :
	classOfEntries = TileEntity
	indexComponent = C_2_TEXTURE_ID.name_quack()
	



# ----- SETTER --------------------------------------------------------------- ##


func createTileset(tilesetName:String,tiles:Array):
	atlas_Tilesets[tilesetName] = tiles
	
	for tile in tiles:   
		if tile is TileEntity or tile is InteractEntity:
			if !has(tile):
				
				atlas_Entry[tile.getCompValue("C_2_TEXTURE_ID")] = tile
				entryComponentRef[tile.getCompValue("C_2_TEXTURE_ID")] = tile.dictOfComps.keys()
				tile.nameForDebug = tile.getCompValue("C_6_NAME")
			
			else: printerr("Error in Atlas_TileEntity! ["+str(tile.name())+"] already exists")
		else: printerr("Error in Atlas_TileEntity! ["+(tile.name())+"] could not be added")





class AtlasEntry:
	var indexValue : String ;   var components : Array  ;   var instance
	func _init(instancePara,indexComponent) -> void:
		indexValue = instancePara.getCompValue(indexComponent)
		components = instancePara.dictOfComps.keys()
		instance   = instancePara





func has(ent):
	#for entry in atlas_Entry :   if entry.instance == ent: return true
	return atlas_Entry.has(ent)
	#else                     :   return false




