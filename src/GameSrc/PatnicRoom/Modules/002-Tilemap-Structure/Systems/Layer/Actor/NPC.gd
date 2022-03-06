extends SokraTiles_Chunk_Actors
class_name SokraTiles_Chunk_NPC


# ----- INITIALICE ----------------------------------------------------------- ##

func _ready() -> void:
	.initialice(ENUM.SOKRATILES.LAYER.ACTOR,self)
	
	for currentActorInstanceID in SokraTiles.Actors_on_map.keys():
		var currentActor = instance_from_id(currentActorInstanceID)
		drawCell_quack( currentActor.textureID(), currentActor.pos() )

 

# ----- GETTER --------------------------------------------------------------- ##

# FUNC | OVERLOADED |                                             
# VAR [mainPos: Vector2] [altPos: default]                        
# VAR [mainPos: int of X] [altPos: int of Y]                      
# VAR third Parameter [debugPara: true]  can be performance heavy 
func getEntByPos_quack(mainPos,altPos:int=0,debugPara=false):
	var validVec = stopAtDefaultTilemapSize(mainPos)
	if entsOnMap.has(validVec) : return entsOnMap[validVec]
	else:return null



# ----- SETTER --------------------------------------------------------------- ##

func drawCell_quack( textureID:String, mainPos:Vector2 ):   _drawCell( textureID,mainPos )


