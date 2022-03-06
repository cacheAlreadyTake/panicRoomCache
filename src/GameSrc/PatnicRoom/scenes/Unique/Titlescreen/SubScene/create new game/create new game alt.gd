extends Node2D

var options

onready var raceNode     =  get_node("Panel2/Race/OptionButton")
onready var kitsNode     =  get_node("Panel2/kits/OptionButton")
onready var nameNode     =  get_node("Panel2/Name/input")
onready var startButton  =  get_node("start")

func _ready() -> void:
	options = Util.JSONParser.fileToDictionary("res://GameData/misc/chargen presets.json")
	
	
	var raceOption = options["race"]
	raceNode.add_item("")
	for raceToString in raceOption.keys() : raceNode.add_item(raceToString.dedent())
	
	
	var kitOption  = options["kits"]
	kitsNode.add_icon_item(load(" "),"")
	for kit in kitOption:
		var kitName = kit["name"]
		var kitImg  = kit["image"]
		kitsNode.add_icon_item(load(kitImg),kitName)




func _input(event: InputEvent) -> void:
	var kitNr  = kitsNode.selected
	var raceNr = raceNode.selected
	var charName = nameNode.bbcode_text
	
	if Util.Nodes.isMouseOnNode(startButton) and event.is_action_pressed("Interface_Mouse_Left"):
		get_node("start/Hover zone")._on_Button_pressed()
		var chargenDict = setUpChargenDict()
		API_005_Player.generateNewChar(chargenDict)
		Gameloop.startPanicMode()



func _on_OptionButton_item_selected(index):
	if !nameNode.bbcode_text.empty() and raceNode.selected != 0 and kitsNode.selected != 0 :
		startButton.visible = true



func setUpChargenDict():
	var dict = Util.JSONParser.fileToDictionary("res://Config/Savestate/template/char 1.json")
	dict ["Kits"]  = kitsNode.get_item_text(kitsNode.selected)
	dict ["race"]  = raceNode.get_item_text(raceNode.selected)
	dict["name"]   = nameNode.bbcode_text
	return dict




