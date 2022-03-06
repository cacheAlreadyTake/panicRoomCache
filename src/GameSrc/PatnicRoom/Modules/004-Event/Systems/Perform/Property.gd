extends _004_PerformParent
class_name _004_Perform_Property


func run(perfomance:Array) -> void :
	var flag = perfomance[3]
	var mode = perfomance[2]
	
	for ent in API_008_KitSet.selection.triggers:
		if   mode == "ADD"    and !ent.hasProperty(flag) :    ent.addProperty(PROPERTIES.OF[flag])
		elif mode == "REMOVE" and  ent.hasProperty(flag) :    ent.removeProperty(PROPERTIES.OF[flag])
		elif mode == "SWAP"   and  ent.hasProperty(flag) :    ent.removeProperty(PROPERTIES.OF[flag])
		elif mode == "SWAP"   and !ent.hasProperty(flag) :    ent.addProperty(PROPERTIES.OF[flag])




func getValueToString_quack():   return "has [color=lime]Condition [/color][color=orange]" 
func getName_quack():            return "HAS_COND"

func getParameter_quack(): 
	return {
	}




