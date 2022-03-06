extends SokraTiles_Chunk_Interactables
class_name SokraTiles_Chunk_Meat_Interactables


# ----- INITIALICE ----------------------------------------------------------- ##

var uniqueEntsOnMap = {}
var wallsOnMap = {}
var doorsOnMap = {}

var allLists = [wallsOnMap,doorsOnMap]

func _ready() -> void:
	.initialice(ENUM.SOKRATILES.LAYER.MEAT_INTERACTABLE,self)
	
	for ent in entsOnMap.keys(): 
		if ent is int: entsOnMap.erase(ent)
	
	
	for ent in entsOnMap.values():
		var currentTile = instance_from_id(ent)
		
		if   currentTile.hasFlag("F_8_IS_WALL"):  addTileToList(wallsOnMap, currentTile)
		elif currentTile.hasFlag("F_9_IS_DOOR"):  addTileToList(doorsOnMap, currentTile)
		else:                                     addTileToList(uniqueEntsOnMap,  currentTile)


func addTileToList(dict,currentTile):             dict[currentTile.pos()] = currentTile 



func addEntOnMap_quack(entity:InteractEntity):
	if entsOnMap.has( entity.pos() ): removeEntOnMap_quack( entity.pos() )
	entsOnMap[entity.pos()] = entity.get_instance_id()

func removeEntOnMap_quack(pos:Vector2):
	var ent = instance_from_id(entsOnMap[pos])
	for list in allLists: if list.has(ent.pos()): list.erase(ent)
	entsOnMap.erase(ent.pos())
	ent.free()


# ----- WALL ----------------------------------------------------------------- ##


func isPosWall(pos:Vector2): return wallsOnMap.has(pos)



# ----- DOOR ----------------------------------------------------------------- ##


func isPosDoor(pos:Vector2) -> bool:  return doorsOnMap.has(pos)

func isPosOpenDoor(pos:Vector2) -> bool: 
	if doorsOnMap.has(pos): return bool(doorsOnMap[pos].getCompValue("C_1_IS_WALKABLE"))
	return true

func isDoorClosed(pos:Vector2) -> bool:
	if doorsOnMap[pos].getCompValue("C_1_IS_WALKABLE") == true: return false
	return true



# ----- GETTER --------------------------------------------------------------- ##


# FUNC | OVERLOADED |                                           
# VAR [mainPos: Vector2] [altPos: default]                      
# VAR [mainPos: int of X] [altPos: int of Y]                    
func getEntByPos_quack(mainPos,altPos:int=0,debugPara=false):
	var validVec = stopAtDefaultTilemapSize(mainPos)
	if entsOnMap.has(validVec) : return instance_from_id(entsOnMap[validVec])
	else:return null


# ----- SETTER --------------------------------------------------------------- ##

func drawCell_quack( textureID:String, mainPos:Vector2 ):   _drawCell( textureID,mainPos )




