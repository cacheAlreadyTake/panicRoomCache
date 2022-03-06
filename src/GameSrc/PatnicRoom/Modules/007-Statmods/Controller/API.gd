extends Node
# BOOKMARK[epic=Modules] 009_Stat_Mods                                              

# ----- INITIALICER -------------------------------------------------------------- ##

var _statmodindex : Dictionary
var _statmodName  : Array


func _init() :
	self.name     = "API_019_EffectStatmods"
	_statmodindex = SYNTAX.EVENT.STAT_MOD
	_statmodName  = SYNTAX.EVENT.STAT_MOD.keys()



# ----- GETTER ------------------------------------------------------------------- ##


func hasStatmodInIndex(toLookUp:String):   return _statmodName.has(toLookUp)

	
func manageUniqueStatmod(ent, statmodName:String, modValue):
	if is_instance_valid(ent): _statmodindex.EFFECT_UNIQUE_STATMOD[statmodName].run(ent,modValue)




