extends _004_PerformParent
class_name _004_Perform_UniqueStatmod


func run(perfomance:Array) -> void :
	var cachedMod = perfomance.pop_front()
	
	var statmods = SYNTAX.EVENT.STAT_MOD
	var toRun = statmods[cachedMod]
	
	for ent in API_008_KitSet.selection.triggers:
		toRun.run(ent,perfomance)




func getValueToString_quack():   return "has [color=lime]Condition [/color][color=orange]" 
func getName_quack():            return "HAS_COND"

func getParameter_quack(): 
	return {
	}



