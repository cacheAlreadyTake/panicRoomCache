extends _004_PerformParent
class_name _004_Perform_Condition


func run(perfomance:Array) -> void :
	var condName = perfomance[0]
	var level     = int(perfomance[2])
	var duration  = int(perfomance[5])
	
	
	
	for ent in API_008_KitSet.selection.triggers:
		API_006_Condition.attachConditionToEnt(ent,condName,duration,level)




func getValueToString_quack():   return "has [color=lime]Condition [/color][color=orange]" 
func getName_quack():            return "HAS_COND"

func getParameter_quack(): 
	return {
	}




