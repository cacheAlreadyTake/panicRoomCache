extends Object
class_name TilesetParser



static func run() -> void:
	var allTileSetFilePaths: Array = getFilepathsToTilesets()
	parseTileSetsIntoAtlas(allTileSetFilePaths)
	buildStaticTilesetNrCrossreference()




static func buildStaticTilesetNrCrossreference():
	for tile in API_001_Atlas.TileAtlas().values():
		
		var layerEnum = tile.layer()
		var staticTilesetNr = tile.textureID()
		
		SokraTiles.tilemapNodeByStaticTilesetID[staticTilesetNr] = layerEnum




static func getFilepathsToTilesets():
	return Util.Filehub.getListOfFilePathsOfDirectory(ENUM.DIOJSONES.FILEPATH_GAMEDATA_TILESETS)



static func parseTileSetsIntoAtlas(allTileSetFilePaths:Array):
	for i in allTileSetFilePaths.size():
		var cache = Util.JSONParser.fileToDictionary(allTileSetFilePaths[i])
		API_001_Atlas.addTileSet(cache["name"], parseTileSetToEntities(cache["tiles"])) 


static func parseTileSetToEntities(tileset):
	var entCache 
	var tilesOfTilesetsWithAttributes = {}
	
	
	for tile in tileset:
		var propertiesCache={}
		for property in tile["properties"].size():
			
			var propertyPair              = tile["properties"][property]
			
			var porpertyName              = ( str(propertyPair["name"]) )
			var porpertyValue             = propertyPair["value"]
			
			propertiesCache[porpertyName] = porpertyValue
			
		
		
		propertiesCache["C_7_STATIC_TILESET_NR"] = getStaticID(propertiesCache["C_2_TEXTURE_ID"])
		entCache = DemokrECTS.initialiceNewEntry(propertiesCache)
		
		tilesOfTilesetsWithAttributes[entCache.textureID()] = entCache
		
		
	return tilesOfTilesetsWithAttributes.values()




static func getStaticID(textureID):
	var split = textureID.split("_")
	var factor = int(split[1]) * 16
	var single = int(split[2])
	return factor+single
	


