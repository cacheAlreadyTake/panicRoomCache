extends Node2D


onready var explainRTL = get_node("explanation/text")

		
# BUG TO IMPLEMENT 
func _ready() -> void: pass
#	var defaultSettings = Util.JSONParser.fileToDictionary("res://Config/Settings.json")
#
#	for category in defaultSettings.keys():
#		get_node("Frame/"+category).distribute(defaultSettings[category])


func saveSettings(): 
	Settings.emit_signal("saveSettings")
	print(Settings.settingsDict)
