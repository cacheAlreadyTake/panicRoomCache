extends _004_PerformParent
class_name _004_Perform_Component


func run(perfomance:Array) -> void :
	var compToString = perfomance[0]
	var operand      = perfomance[1]
	var value
	if perfomance.has(("EQUALS")) : value =perfomance[2]
	if perfomance.has(("BY")) : value = perfomance[5]
	
	for ent in API_008_KitSet.selection.triggers:
		if ent.has(compToString):
				
			var comp = ent.getComp(compToString)
			if operand == "DECREMENT" :   comp.value -= int(value)
			if operand == "INCREMENT" :   comp.value += int(value)
			if operand == "EQUALS"    :   comp.value = str(value)




func getValueToString_quack():   return "has [color=lime]Condition [/color][color=orange]" 
func getName_quack():            return "HAS_COND"

func getParameter_quack(): 
	return {
	}



