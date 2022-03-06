extends Control


func _ready() -> void:
	var kitpartArr = API_005_Player.kitparts().getAll()
	loadKitparts(kitpartArr)


var listOfEntries : Array


var filepathBase = "res://GameSrc/Universal/GUI/kitpart_browser/subscene"
var kitEntry     = filepathBase+"/KitSetEntryOne.tscn"
var kitEntryAlt  = filepathBase+"/KitSetEntryTwo.tscn"
var sceneQueue   = [kitEntry,kitEntryAlt]


func loadKitparts(kitPartArr:Array):
	for kitPart in kitPartArr:
		sceneQueue.invert()
		
		var filepathToScene = sceneQueue.front()
		var packedScene     = load(filepathToScene)
		var instancedScene  = packedScene.instance()
		instancedScene.initialice(kitPart)
		get_node("All KitParts/ScrollContainer/VBoxContainer").add_child(instancedScene)
		
		
		
		var inventoryEntry = _KitpartBrowserEntry.new(kitPart,instancedScene)
		listOfEntries.append(inventoryEntry)



func getCurrentList(): return listOfEntries

func resetCurrentList(): 
	for entry in listOfEntries:
		entry.scene.visible = true

