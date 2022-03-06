extends Node


onready var statModList = get_node("statmod/list")
onready var conditionList = get_node("condition/list")


func distribute(conditions,statmods):
	 
	
	for i in conditions.condtionList.size():
		var currentCond  = conditions.condtionList[i]
		var currrentRow  = conditionList.get_node(str(i))
		
		currrentRow.visible = true
		
		currrentRow.get_node("name").bbcode_text = "[color=yellow][center]"+currentCond.toString_quack()
		currrentRow.get_node("dur").bbcode_text  = str(currentCond.duration)
		currrentRow.get_node("lvl").bbcode_text  = str(currentCond.level)
	
	
	
	
	for i in statmods.statModList.size():
		var currentMod  = statmods.statModList[i]
		var currrentRow = statModList.get_node(str(i))
		
		currrentRow.visible = true
		currrentRow.get_node("RTL").bbcode_text = "[center]"+currentMod.getValueToString_quack()

