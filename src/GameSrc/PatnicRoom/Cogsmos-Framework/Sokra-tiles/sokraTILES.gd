
extends Node


# ----- INITIALICE ----------------------------------------------------------- ##

var tilemapManager := SokraTILEs_TilemapManager.new()
func _ready():TilesetParser.run()

var tilemapNodeByStaticTilesetID = {}

var tilemap       = {}
var tilemapNode   = {}
var Actors_on_map = {}









func parseTilemap(tileMapFilePath:String):          tilemapManager.createTilemap(tileMapFilePath)
func addChunkToKnownLayers(layerEnum,chunkClass):   tilemapNode[layerEnum] = chunkClass
func setNewTilemap(tilemap):                        self.tilemap = tilemap

# returns Array of ActorEntities
func getAllActorsOnMap() -> Array :   return Actors_on_map.values()



# ----- GETTER --------------------------------------------------------------- ##

func getPlayer():			return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.PLAYER)
func getActor():			return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.ACTOR)

func getMeatInteract():		return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.MEAT_INTERACTABLE)
func getMeatFloor():		return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.MEAT_GROUND)

func getMatrixInteract():	return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.MATRIX_INTERACTABLE)
func getMatrixFloor():		return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.MATRIX_GROUND)

func getMagicInteract():	return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.MAGIC_INTERACTABLE)
func getMagicFloor():		return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.MAGIC_GROUND)

func getSelection():		return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.SELECTION)

func getCondition():		return SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.CONDITION)

	
func getTilemapLayer(key): 
	if key is String :
		var enumNr = ENUM.SOKRATILES.LAYER.get(key)
		if tilemapNode.has(enumNr):  return SokraTiles.tilemapNode[enumNr]
			
	else : return SokraTiles.tilemapNode[key]
	return null

func getLayer(key) -> Dictionary:
	if key is String :
		var enumNr = ENUM.SOKRATILES.LAYER.get(key)
		if tilemap.has(enumNr):  return SokraTiles.tilemap[enumNr]
			
	else : return SokraTiles.tilemap[key]
	return {}
