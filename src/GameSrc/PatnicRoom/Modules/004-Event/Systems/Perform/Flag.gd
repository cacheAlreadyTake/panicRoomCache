extends _004_PerformParent
class_name _004_Perform_Flag


func run(perfomance:Array) -> void :
	var flag = perfomance[3]
	var mode = perfomance[2]
	
	for ent in API_008_KitSet.selection.triggers:
		if   mode == "ADD"    and !ent.hasFlag(flag) :    ent.addFlag(flag)
		elif mode == "REMOVE" and  ent.hasFlag(flag) :    ent.removeFlag(flag)
		elif mode == "SWAP"   and  ent.hasFlag(flag) :    ent.removeFlag(flag)
		elif mode == "SWAP"   and !ent.hasFlag(flag) :    ent.addFlag(flag)
		



func getValueToString_quack():   return "has [color=lime]Condition [/color][color=orange]" 
func getName_quack():            return "HAS_COND"

func getParameter_quack(): 
	return {
	}



