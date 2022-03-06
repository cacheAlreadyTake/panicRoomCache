
# CLASS                                                                              
# DOCS  https://mizzitgamestudios.github.io/mkDocs/site/Entities/tile/               
# CLASS                                                                              
# BOOKMARK[epic=Entities_Core] Tile                                                  
extends Entity
class_name TileEntity



var position : 		Vector2



# ----- COMMON VARS ---------------------------------------------------------- ##


# VAR General 
func description()     -> String:	return getCompValue("C_0_DESCRIPTION")
func isWalkable()      -> bool: 	return getCompValue("C_1_IS_WALKABLE")
func textureID()       -> String:	return getCompValue("C_2_TEXTURE_ID")
func tileName()        -> String:	return getCompValue("C_6_NAME")
func layer()           -> String: 	return getCompValue("C_3_LAYER")


# VAR toString  
func typeToString()    -> String: 	return ENUM.SOKRATILES.TYPES_ON_MAP.TILE
func type()            -> String:	return ENUM.SOKRATILES.TYPES_ON_MAP.TILE
func mouseHover_quack() -> String:  return textureID()


# VAR Spacial 
func pos()             -> Vector2:	return position
func posX()            -> int:		return int(position.x)
func posY()            -> int:		return int(position.y)


# VAR Tilemap parse
func staticTilesetNR() -> int: 		return getCompValue("C_7_STATIC_TILESET_NR")
func matrixNoise()     -> int:		return getCompValue("C_5_MATRIX_NOISE")
func magicNoise()      -> int:		return getCompValue("C_4_MAGIC_NOISE")



# ----- SETTER --------------------------------------------------------------- ##


func setPos(pos:Vector2): 	position = pos


	
