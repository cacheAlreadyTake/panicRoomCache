extends SokraTiles_Chunk_Actors
class_name SokraTiles_Chunk_Player


# ----- INITIALICE --------------------------------------------------------------- ##


func _ready() -> void:
	SokraTiles.addChunkToKnownLayers(ENUM.SOKRATILES.LAYER.PLAYER,self)
	
	_drawCell( API_005_Player.currentChar.textureID(), API_005_Player.currentChar.pos() )
	
	updateCammera()
	.get_tree().get_root().get_node("Node2D").recievePlayer(self)

 

# ----- MOVE --------------------------------------------------------------------- ##

var counter = 0 
func movePlayer(directionEnum):
	counter += 1
	.moveActor(directionEnum,API_005_Player.currentChar)
	 
	updateCammera()
	API_002_Tilemap.interpreteTile(API_005_Player.currentChar, self )


func updateCammera():   .get_node("Camera2D").updateCenter( API_005_Player.currentChar.pos() )

