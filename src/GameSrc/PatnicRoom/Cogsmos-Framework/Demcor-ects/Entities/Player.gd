
# CLASS                                                                              
# DOCS  https://mizzitgamestudios.github.io/mkDocs/site/Entities/player/             
# CLASS                                                                              
# BOOKMARK[epic=Entities_Core] Player                                                
extends Entity
class_name PlayerEntity


# ----- INITIALICE ----------------------------------------------------------- ##

var position      : Vector2

var inventory     := _005_Common_Inventory.new()
var kitventory   := _005_Common_Kitventory.new()
var stats         := _005_Character_Stats.new()


func _init() :
	#>>> Default <<<#
	position   = Vector2(0,0)
	addComponent(C_53_SELECTED_POSITIONS.new())




func stats()                        -> _005_Character_Stats           :  return stats
func kitventory()                   -> _005_Common_Kitventory      :  return kitventory
func inventory()                    -> _005_Common_Inventory :  return inventory

 
# ----- GETTER --------------------------------------------------------------- ##


#>>> Generall <<<#
func playerName() 					-> int             :  return .getCompValue("C_45_CHARACTER_NAME")
func streetName() 					-> String          :  return .getCompValue("C_44_STREETNAME")
func textureID()					-> String          :  return .getCompValue("C_2_TEXTURE_ID")
func description() 					-> bool            :  return .getCompValue("C_0_DESCRIPTION")
func mouseHover_quack()             -> String          :  return "player"
func layer()           -> String: 	return ENUM.SOKRATILES.LAYER.MEAT_GROUND

#>>> Position <<<#
func pos()                          -> Vector2         :  return position
func posX()							-> int             :  return int(position.x)
func posY()							-> int             :  return int(position.y)



# ----- SETTER --------------------------------------------------------------- ##

func setPos(positionPara:Vector2):     position = positionPara



