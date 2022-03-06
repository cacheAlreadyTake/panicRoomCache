
# CLASS                                                                              
# DOCS  https://mizzitgamestudios.github.io/mkDocs/site/Entities/actor/              
# CLASS                                                                              
# BOOKMARK[epic=Entities_Core] Actor                                                 
extends Entity
class_name ActorEntity


# ----- INITIALICE ----------------------------------------------------------- ##


var position: Vector2
var conditionList = []
var rngTemplate: ActorRNGTemplate



# ----- COMMON VARS ---------------------------------------------------------- ##


# VAR General             
func textureID()        -> String:	return getCompValue("C_2_TEXTURE_ID")
func tileName()         -> String:	return getCompTempValue("role","C_6_NAME")
func staticTilesetlNr() -> String:	return getCompValue("C_7_STATIC_TILESET_NR")
func synonym()          -> String:	return getCompValue("C_47_SYNONYM")
func mouseHover_quack() -> String:  return synonym()


# VAR toString 
func type()             -> String:  return ENUM.SOKRATILES.TYPES_ON_MAP.ACTOR
func typeToString()     -> String:  return ENUM.SOKRATILES.TYPES_ON_MAP.ACTOR


# VAR Spacial 
func position()         -> Vector2:	return position
func pos()				-> Vector2: return position()
func posX()             -> int:     return int(position.x)
func posY()             -> int:     return int(position.y)
func layer()             -> int:     return ENUM.SOKRATILES.LAYER.ACTOR


# VAR Attributes          
func constitution()     -> int:		return getCompValue(C_19_ATTRIBUTES.name_quack()).constitution.value
func agillity()         -> int:		return getCompValue(C_19_ATTRIBUTES.name_quack()).agillity.value
func reaction()         -> int:		return getCompValue(C_19_ATTRIBUTES.name_quack()).reaction.value
func willpower()        -> int:		return getCompValue(C_19_ATTRIBUTES.name_quack()).willpower.value
	
func strength()         -> int:		return getCompValue(C_19_ATTRIBUTES.name_quack()).strength.value
func intuition()        -> int:		return getCompValue(C_19_ATTRIBUTES.name_quack()).intuition.value
func charisma()         -> int:		return getCompValue(C_19_ATTRIBUTES.name_quack()).charisma.value
func logic()            -> int:		return getCompValue(C_19_ATTRIBUTES.name_quack()).logic.value

# VAR indirect Attributes 
func carriageCapacity() -> int:		return getCompValue(C_26_INDIRECT_STATS.name_quack()).carriageCapacity
func physicalLimit()    -> int:		return getCompValue(C_22_LIMITS.name_quack()).physicalLimit
func socialLimit()      -> int:		return getCompValue(C_22_LIMITS.name_quack()).socialLimit
func mentalLimit()      -> int:		return getCompValue(C_22_LIMITS.name_quack()).mentalLimit
func hitpoints()        -> int:		return getComp(C_57_HITPOINTS.name_quack()).value
func condition()        -> int:		return getCompValue(C_26_INDIRECT_STATS.name_quack()).condition


func maxKitsets()       -> int:     return getCompValue("C_25_MAX_KITSETS")


# ----- SETTER --------------------------------------------------------------- ##


func changeHitpoints(modValue):     getComp(C_57_HITPOINTS.name_quack()).changeHitpoints(modValue)
func setPos(pos:Vector2):           position = pos



