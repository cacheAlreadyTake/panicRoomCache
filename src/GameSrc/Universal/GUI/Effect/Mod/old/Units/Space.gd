extends Node






func distribute(effect):
	for atttribute in ["Medium","Source","Type","Reach"]:
		var currentNode = get_node(atttribute+"/ContentPanel/RichTextLabel2")
		var value = getValueByAttibute(atttribute,effect)
		currentNode.bbcode_text = str(value)


func getValueByAttibute(attribute,effect):
	match attribute:
		"Medium" :   return effect.medium
		"Source" :   return effect.source
		"Type"   :   return ENUM.SOKRATILES.M_TYPE.keys()[effect.mTypeEnum]
		"Reach"  :   return getReachToString(int(effect.reach))


func getReachToString(reach):
	if reach == 1   : return "[color=yellow]Next to"
	if reach == 0   : return "[color=yellow]None"
	if reach == 100 : return "[color=red]All"
