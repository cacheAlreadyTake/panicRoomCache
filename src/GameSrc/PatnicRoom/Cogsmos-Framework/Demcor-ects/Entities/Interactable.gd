
# CLASS                                                                              
# DOCS  https://mizzitgamestudios.github.io/mkDocs/site/Entities/interact/           
# CLASS                                                                              
# BOOKMARK[epic=Entities_Core] Interact                                              
extends Entity
class_name InteractEntity


var position: 				Vector2 # REFACTOR redundad  



# ----- COMMON VARS ---------------------------------------------------------- ##


#VAR General 
func mouseHover_quack() -> String:  return textureID()
func description()      -> String:	return getCompValue("C_0_DESCRIPTION")
func isWalkable()       -> bool: 	return getCompValue("C_1_IS_WALKABLE")


#VAR toString 
func textureID()        -> String:	return getCompValue("C_2_TEXTURE_ID")
func name()         -> String:	return getCompValue("C_6_NAME")
func typeToString(): return ENUM.SOKRATILES.TYPES_ON_MAP.INTERACT


#VAR Tilemap parse
func staticTilesetNR()  -> int: 		return getCompValue("C_7_STATIC_TILESET_NR")
func matrixNoise()      -> int:		return getCompValue("C_5_MATRIX_NOISE")
func magicNoise()       -> int:		return getCompValue("C_4_MAGIC_NOISE")


#VAR Spacial
func layer()            -> String: 	return getCompValue("C_3_LAYER")
func pos()              -> Vector2:	return position
func posX()             -> int:		return int(position.x)
func posY()             -> int:		return int(position.y)



# ----- SETTER --------------------------------------------------------------- ##


func setPos(pos:Vector2):
	position = pos

func type(): return ENUM.SOKRATILES.TYPES_ON_MAP.INTERACT

	
