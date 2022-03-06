extends SokraTiles_Chunk_Floor
class_name SokraTiles_Chunk_Meat_Floor


# ----- INITIALICE ----------------------------------------------------------- ##

func _ready() -> void:
	.initialice(ENUM.SOKRATILES.LAYER.MEAT_GROUND,self)

 

# ----- GETTER --------------------------------------------------------------- ##


func getEntByPos_quack(mainPos:Vector2):
	var validVec = stopAtDefaultTilemapSize(mainPos)
	if entsOnMap.has(validVec) : return instance_from_id(entsOnMap[validVec])
	else:return null



func addEntOnMap_quack(entity):
	if entsOnMap.has( entity.pos() ): 
		removeEntOnMap_quack( entity )
	entsOnMap[entity.pos()] = entity.get_instance_id()

func removeEntOnMap_quack(ent):
	var entOnMap = entsOnMap[ent.pos()]
	if entOnMap != ent.get_instance_id() :
		instance_from_id(entsOnMap[ent.pos()]).free()




# ----- SETTER --------------------------------------------------------------- ##

func drawCell_quack(textureID:String, mainPos:Vector2) : _drawCell( textureID,mainPos )
