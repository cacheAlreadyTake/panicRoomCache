extends Node
class_name _API_017_Cmd_SpawnTile




static func run(parameter:Array):
	var cache = API_005_Player.currentChar.pos()
	var saniticedPos = Vector2(cache.x,cache.y+1)
	
	var tileNameOfParameter = parameter[0]
	
	var newEnt:TileEntity = API_001_Atlas.getTileByTextureID(tileNameOfParameter)
	newEnt.setPos(saniticedPos)
	API_002_Tilemap.addEntOnTilemap(newEnt)
	


