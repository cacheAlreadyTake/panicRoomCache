extends Object
class_name EFFECTS_INDEX



static func getIndex() -> Dictionary : return {
	  "AFFECTING"    :  _006_EFFECTS_AFFECTING
	 ,"CONSTRAINT"   :  _006_EFFECTS_CONSTRAINT
	 ,"FREECE"       :  _006_EFFECTS_FREECE
	 ,"SYNERGIZE"    :  _006_EFFECTS_SYNERGIZE
	 ,"MOVING"       :  _006_EFFECTS_MOVING
	 ,"SPREADING"    :  _006_EFFECTS_SPREADING
	 ,"TELEPORT"     :  _006_EFFECTS_TELEPORT
}



#  SPREADING ---> TYPE EQUALS TILE --> 50 -> 2
#  SPREADING ---> INDEX EQUALS Suburban_0_1 --> 50 -> 2
#  
#  MOVING ---> RNG
#  MOVING ---> ALONG
#  MOVING ---> AGAINST
#  
#  TELEPORT ---> BY_DASH  --> RNG -> 2
#  TELEPORT ---> BY_DASH  --> INPUT -> 2
#  TELEPORT ---> BY_RNG   --> COMP  EQUALS C_2_TEXTUREID EQUALS Suburban_0_1
#  TELEPORT ---> BY_RNG   --> PROP  EQUALS WET AND BURNABLE
#  
#  CONSTRAINT ---> MOVEMENT
#  CONSTRAINT ---> KIT_USE
#  CONSTRAINT ---> ITEM_USE
#  
#  FREECE ---> 2




