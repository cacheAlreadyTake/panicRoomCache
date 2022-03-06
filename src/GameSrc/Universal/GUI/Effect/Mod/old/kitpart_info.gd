extends Control



func loadEffect(modArray:Array):
	for i in modArray.size():
		var currentRow = get_node("Mods/VBoxContainer/"+str(i))
		var currentMod =  modArray[i]
		
		currentRow.visible = true
		
		for key in  ["slot","unit","mode","value"]:
			
			var saniticedInsert
			var insert = saniticeString(str(currentMod[key]))
			
			match key:
				"slot"  : saniticedInsert = unitToString(insert) 
				"unit"  : saniticedInsert =  insert
				"mode"  : saniticedInsert = modeToString(insert) 
				"value" : saniticedInsert = valueToString(currentMod[key]) 
			
			currentRow.get_node(key).bbcode_text = saniticedInsert
		


func saniticeString(content:String): 
	var low = content.to_lower()
	
	var splitArr = low.split("_")
	var spaced = splitArr.join(" ")
	
	return spaced



func modeToString(content:String):
	if content.split(" ").size() == 3:
		var connector = content.split(" ")[2]
		return "append ("+connector+")"
	
	else: return content



func valueToString(content):
	
	if _Syntax_Effect_Condition.EFFECT_CONDITION.has(content["meta"]):
		return content["meta"]+" (lvl"+content["value"]["level"]+")(dur"+content["value"]["dura"]+")"
	else:
		return str(content)
#	if set is String:
#		SYNTAX.EFFECT().EXPENDABLE_TRIGGER_SPECIFIC
#
#	if set is Array:
#		pass
#
#	else:
		
#
#	var keyword = set[0]
#	var value   = set[1]
	
	
	


func unitToString(content:String):
	if content.split("trigger").size() == 2: 
		return content.split("trigger")[1]
	
	if content.split("effect").size() == 2: 
		return content.split("effect")[1]
	
	else: return content




