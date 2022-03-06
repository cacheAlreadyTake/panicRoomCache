extends Control


var cachedDurations = []

func distribute(effectEntity:EffectEntity) -> void:
	for slot in [effectEntity.spawnComponent,effectEntity.onsetComponent,effectEntity.hitComponent,effectEntity.offsetComponent]:
		if is_instance_valid(slot): cachedDurations.append(slot.time.value)
		else: cachedDurations.append(-1)
		
		
	for i in range(0,4):
		var currentNode  = get_node("list/"+str(i))
		var timeToString = getTimeToString(i)
		
		currentNode.get_node("nr").bbcode_text = timeToString
		if timeToString != "VOID" :   currentNode.get_node("Button").visible =true
	



func getTimeToString(i):
	var saniticedTime = str(cachedDurations[i])
	if saniticedTime == "0":  return "[color=yellow]Instant" 
	if saniticedTime == "-1": return "Void" 
