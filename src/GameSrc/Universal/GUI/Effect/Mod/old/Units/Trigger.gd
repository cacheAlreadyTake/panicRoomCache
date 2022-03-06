extends Node


onready var sppecificTriggerNodes = {
	"Basic"    : {   "keyword":get_node("Specific/Initial/keyword/RTL")   ,   "value":get_node("Specific/Initial/value/RTL")   },
	"followUp" : [{},{},{},{}]
}



func _ready() -> void:
	for i in range(0,4):
		for panel in ["connector","keyword"]:
			
			var nodePath = "Specific/row"
			nodePath += str(i)+"/"
			nodePath += panel
			nodePath += "/RTL"
			
			sppecificTriggerNodes["followUp"][i][panel] = get_node(nodePath)





func distribute(basic,specific):
	get_node("Basic/ContentPanel/Text").bbcode_text = getBasicToString(basic.value)
	
	
	for i in specific.specificTriggers.size():
		
		var entry       = specific.specificTriggers[i]
		var triggerNode = get_node("Specific")
		
		if entry is String            : addConnector(entry,triggerNode)
		elif is_instance_valid(entry) : addTrigger(entry,triggerNode)

func getBasicToString(basic):
	var cache = basic.to_lower()
	var formatedCache = cache.replace("_"," and ")
	var split = formatedCache.split(" ")
	
	split[0] = capitalChar(split[0])
	split[2] = capitalChar(split[2])
	
	return split.join(" ")




func capitalChar(word):
	var first = word[0].to_upper()
	word.erase(0,1)
	return "[color=yellow]"+first+word+"[/color]"

var currentConnectorNr = 1
var currentKeywordNr   = 0


func addConnector(connectorToStr:String,node:Control):
	node.get_node("row"+str(currentConnectorNr)+"/connector/RTL").bbcode_text = connectorToStr
	currentConnectorNr += 1


func addTrigger(trigger,node:Control):
	node.get_node("row"+str(currentKeywordNr)+"/keyword/RTL").bbcode_text = trigger.getValueToString_quack()
	currentKeywordNr += 1
	get_node("Specific/row"+str(currentKeywordNr-1)).visible = true



