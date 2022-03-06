extends Control


var mode = "N/A"
var currentModNr = 0

func fillInByIndex(modKitIndex):
	var mods = API_001_Atlas.getKitByDrirectName(modKitIndex).event().main()["DATA"]
	
	for category in mods.values():
		if mods.has("ADDITION")     : mode = "[color=green]+"
		if mods.has("MODIFICATION") : mode = "[color=yellow]+/-"
		if mods.has("DELETION")     : mode = "[color=orange]-"
		
		for i in category.size():
			var currentMod = category[i].duplicate()
			
			var row = get_node("Effect/List/row"+str(i))
			row.get_node("Mode/RTL").bbcode_text = mode
			row.get_node("Upper/RTL").bbcode_text = currentMod.pop_front()
			row.get_node("Middle/RTL").bbcode_text = currentMod.pop_front()
			row.get_node("Lower/RTL").bbcode_text = str(currentMod)
			
			
	
	

















#
#func addMods(mods:Array) -> void:
#	var nodePath = ""
#	for mod in mods:
#		if mod.has("PERFORM")  : nodePath += "Effect/List/row"+str(performNr+1)    ; performNr += 1
#		if mod.has("CONSIDER") : nodePath += "Consider/List/row"+str(considerNr+1) ; considerNr += 1
#
#		mod.pop_front()
#		mod.pop_front()
#		var cache = mod.duplicate(true)
#		get_node(nodePath).get_node("Upper/RTL").bbcode_text = "[color=lime]"+cache.pop_front()
#		get_node(nodePath).get_node("Middle/RTL").bbcode_text = "[color=lime]"+cache.pop_front()
#		get_node(nodePath).get_node("Lower/RTL").bbcode_text = "[color=lime]"
#		for value in cache:get_node(nodePath).get_node("Lower/RTL").bbcode_text += value+"  "
#
#
#
#
#
#func changeMods(mods:Array) -> void:
#	var nodePath = ""
#	for mod in mods:
#		if mod.has("PERFORM")  : nodePath += "Effect/List/row"
#		if mod.has("CONSIDER") : nodePath += "Consider/List/row"
#
#		var section = mod.pop_front()
#		var package = mod.pop_front()
#		var cache   = mod.duplicate(true)
#
#
#		var relevantNr
#		for i in range(0,7):
#			var row = get_node(nodePath+str(i))
#			if row.get_node("Middle/RTL").bbcode_text == cache[1]: relevantNr = i
#
#
#
#
#		var row = get_node(nodePath+str(relevantNr))
#		var upper = row.get_node("Upper/RTL").bbcode_text
#		var middle = row.get_node("Middle/RTL").bbcode_text
#		var lower = row.get_node("Lower/RTL").bbcode_text
#
#
#		if upper != cache[0]:row.get_node("Upper/RTL").bbcode_text = "[color=yellow]"+cache[0]+"[/color]"
#		if middle != cache[1]:row.get_node("Middle/RTL").bbcode_text = "[color=yellow]"+cache[1]+"[/color]"
#
#		cache.pop_front()
#		cache.pop_front()
#		var cachedStr = ""
#		for value in cache:cachedStr += value+"  "
#
#		var toInsert = ""
#		for i in cachedStr.length():
#			if lower[i] != cachedStr[i]: toInsert += "[color=yellow]"+cachedStr[i]+"[/color]"
#			else:toInsert+= cachedStr[i]
#		row.get_node("Lower/RTL").bbcode_text = toInsert
#
#
#
#func removeMods(mods:Array) -> void:
#	var nodePath = ""
#	for mod in mods:
#		if mod.has("PERFORM")  : nodePath += "Effect/List/row"
#		if mod.has("CONSIDER") : nodePath += "Consider/List/row"
#		var section = mod.pop_front()
#		var package = mod.pop_front()
#		if mod.has("PERFORM")  : nodePath += "Effect/List/row"
#		if mod.has("CONSIDER") : nodePath += "Consider/List/row"
#		var cache   = mod.duplicate(true)
#		var relevantNr
#		for i in range(0,7):
#			var row = get_node(nodePath+str(i))
#			if row.get_node("Middle/RTL").bbcode_text == cache[1]: 
#				relevantNr = i
#		var row = get_node(nodePath+str(relevantNr))
#		row.get_node("Upper/RTL").bbcode_text = "[color=black]"+cache[0]+"[/color]"
#		row.get_node("Middle/RTL").bbcode_text = "[color=black]"+cache[1]+"[/color]"
#		var cachedStr = ""
#		for value in cache:cachedStr += value+"  "
#		row.get_node("Lower/RTL").bbcode_text = "[color=black]"+cachedStr+"[/color]"
#
#
#
#
#
#
#
