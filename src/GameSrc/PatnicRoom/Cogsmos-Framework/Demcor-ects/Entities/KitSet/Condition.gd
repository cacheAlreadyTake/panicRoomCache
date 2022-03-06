
# CLASS                                                                              
# DOCS  https://mizzitgamestudios.github.io/mkDocs/site/Entities/tile/               
# CLASS                                                                              
# BOOKMARK[epic=Entities_Core] Tile                                                  
extends Entity
class_name ConditionEntity


var affectedEnt
var effects = []
var level
var duration


func name()          -> String     : return getCompValue("C_6_NAME")
func by()          -> String     : return getCompValue("C_71_EVENTT_BY")
func texture()          -> String     : return getCompValue("C_2_TEXTURE_ID")
func use()         -> String     : return getCompValue("C_72_LEC_META_USE")
func index()       -> String     : return getCompValue("C_12_ATLAS_INDEX")
func description() -> String     : return getCompValue("C_74_EVENT_DESCRIPTION")

func run():
	for effect in effects:   SYNTAX.EVENT.EFFECTS[effect["NAME"]].run(self,effect)
	duration -= 1
	
	if duration == 0:
		affectedEnt.dictOfConds.erase(name())
		self.queue_free()


