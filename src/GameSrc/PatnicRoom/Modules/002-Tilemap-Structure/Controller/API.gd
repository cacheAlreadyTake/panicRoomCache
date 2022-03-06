extends Node



# DOCS  docs/docs/Modules/002.md                                                  
# BOOKMARK[epic=Modules] 002_Tilemap_Structure                                    
# ----- INITIALICE ----------------------------------------------------------- ##

var cacheForSelection = {} 

var _in 
var _out 


var _tileInterpreter



func _ready():
	_tileInterpreter = _002_TileInterpreter.new()
	_out             = _002_Out.new()
	_in              = _002_In.new()
	



func getMovePos(posBase:Vector2,directionEnum):
	return _002_Utils.modPos(posBase,directionEnum,1)

func getMovePosByMultiple(posBase:Vector2,directionEnum,times):
	return _002_Utils.modPos(posBase,directionEnum,times)

# ----- GETTER --------------------------------------------------------------- ##

func startNewRound():
	_out.emit_effectTurnStarted()





func interpreteTile(actor,node:Node): _tileInterpreter.interpreteTileNr(actor,node)




func swapInEntity(oldEnt,newEnt):
	newEnt.position = oldEnt.position
	API_002_Tilemap.removeEntOnTilemap(oldEnt)
	API_002_Tilemap.addEntOnTilemap(newEnt)



func removeEntOnTilemap(ent):
	var tilemapNode = SokraTiles.getTilemapLayer(ent.layer())
	tilemapNode.drawCell_quack("-1",ent.pos())
	tilemapNode.removeEntOnMap_quack(ent.pos())


func addEntOnTilemap(ent):
	var tilemapNode = SokraTiles.getTilemapLayer(ent.layer())
	tilemapNode.drawCell_quack(ent.textureID(),ent.pos())
	tilemapNode.addEntOnMap_quack(ent)




