extends _004_ConsiderParent
class_name _004_Consider_Component


func run(consideration:Array) -> Array :
	var triggered = []
	var compToString = consideration[2]
	var operand      = consideration[3]
	var value        = consideration[4]
	
	for ent in API_008_KitSet.selection.kitset.selectedEntities():
		if ent.has(compToString) :
			
			var compValue = ent.getCompValue(compToString)
			var toAdd    = false
			
			
			match index[compToString].dioJSONType_quack():
				"STRING"    : if str(compValue) == str(value) : toAdd = true
				"INTEGER"   : if int(compValue) == int(value) : toAdd = true
				"BOOLEAN"   : 
					if  compValue and value == "TRUE"  :  toAdd = true
					if !compValue and value == "FALSE" :  toAdd = true
			
			
			if toAdd : triggered.append(ent)
	return triggered




func getValueToString_quack():   return "has [color=lime]Condition [/color][color=orange]" 
func getName_quack():            return "HAS_COND"

func getParameter_quack(): 
	return {
	}




