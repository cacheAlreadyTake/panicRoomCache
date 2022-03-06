extends _004_ConsiderParent
class_name _004_Consider_Type


func run(consideration:Array) -> Array :
	var trimmedConsid = setUpParse(consideration)
	var triggered = []
	for consid in trimmedConsid:
		for ent in API_008_KitSet.selection.selects:
			if ent is index[consid] :    triggered.append(ent)
	return triggered






