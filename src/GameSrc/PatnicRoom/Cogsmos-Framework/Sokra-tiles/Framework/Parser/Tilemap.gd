extends Node
class_name SokraTILEs_TilemapManager


# BOOKMARK Tileset-parser                                                        
# ----- OPEN FUNKTIONS ------------------------------------------------------- ##

var tilesetAtlas = API_001_Atlas.TileSetAtlas()


func createTilemap(filepathToMap:String) -> void:
	var tiledImport = Util.JSONParser.fileToDictionary(filepathToMap)
	var mapMetaData = cleanUpTiledImport(tiledImport)
	
	
	for levelNr in mapMetaData["levels"].size():
		var parsedMap = {}
		for layerInLevel in mapMetaData["levels"][levelNr].keys():
			
			
			var currentLayer        = mapMetaData["levels"][levelNr][layerInLevel]
			if !currentLayer.empty():
				
				var formatedLayer       = parseLayer(mapMetaData,currentLayer)
				parsedMap[ENUM.SOKRATILES.LAYER.get(layerInLevel)] = formatedLayer
				
				if layerInLevel == "PLAYER":  findPlayer(formatedLayer)
			
			SokraTiles.setNewTilemap( parsedMap )


 


func cleanUpTiledImport(tiledImport):
	var mapMetaData         = {}
	mapMetaData["levels"]   = []
	
	
	mapMetaData["size"]     = Vector2(tiledImport["height"],tiledImport["width"])
	mapMetaData["tileNrs"]  = getMapSpecificTileNr(tiledImport["tilesets"])
	
	for level in tiledImport["layers"]:
		var currentLayer = orderLayer(level["layers"])
		mapMetaData["levels"].append(currentLayer)
	
	
	return mapMetaData



# FUNC !	!                                             
# FUNC parseLayer(true) for 0 at every Tile                     
# FUNC parseLayer(false,layerVar) for inserting LayerVars Tile  
func parseLayer(mapMetaDataPara,layer):
	var size           = mapMetaDataPara["size"]
	var knownTileNrs   = mapMetaDataPara["tileNrs"]
	var twoD           = {}
	
	for x in size.x:
		twoD[x] = {}
		for y in size.y:
			
			
			var currentTileNr = layer[x*100+y]
			
			if currentTileNr != 0:
				var ent            = API_001_Atlas.getTileByTextureID( knownTileNrs[int(currentTileNr)] )
				ent.position       = Vector2(y,x)
				twoD[Vector2(y,x)] = ent.get_instance_id()
				
				for entry in API_001_Atlas._tiles.atlas_Entry.values():
					var test = entry.get_instance_id()
					if ent.get_instance_id() == test: print("nkdnk")
	
	
	return twoD




func findPlayer(layer):
	for x in layer.values():
		if x is int:
			var playerPos = instance_from_id(x).position
			API_005_Player.currentChar.setPos(Vector2(playerPos.x,playerPos.y))




func orderLayer(tiledImportedLayers):
	var finalLayers = {}
	
	for layerDict in tiledImportedLayers:
		var layerName = layerDict["name"]
		var layerData = layerDict["data"]
		finalLayers[layerName] = layerData
	
	for layerName in ENUM.SOKRATILES.LAYER.keys():
		if !finalLayers.has(layerName): finalLayers[layerName] = []
	
	return finalLayers


func getMapSpecificTileNr(tiledImport):
	var staticNrOffset = []
	for layer in tiledImport: staticNrOffset.append(layer["firstgid"]-1)
	var currentTilesetNr = 0
	var usedTilesets     = {}
	
	
	for tiledOrderEntry in tiledImport:
		var currentTileset  = {}
		
		var currentOffset = staticNrOffset[currentTilesetNr] 
		var tileset       = _getTilesetByPath(tiledOrderEntry["source"])
		
		for tile in tileset:
			var staticNr    = tile.getCompValue("C_7_STATIC_TILESET_NR")
			var tileNrOfMap = int( staticNr+currentOffset )
			
			usedTilesets[tileNrOfMap+1] = tile.textureID()
		
		currentTilesetNr += 1
	
	return usedTilesets



func _getTilesetByPath(filePath):
	var nameAndSuffix = filePath.split("/") as Array
	var tilesetName   = nameAndSuffix.pop_back().split(".json")[0]
	return API_001_Atlas.TileSetAtlas()[tilesetName]




