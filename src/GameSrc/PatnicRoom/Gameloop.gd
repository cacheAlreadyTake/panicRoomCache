extends Node

var i=0
var scene
func initPanic():
	API_014_Behavior.loopThroughActor()


func startTitleMode():
	print(ENUM.FILE_PATHS.SCENE.TITLE)
	get_tree().change_scene(ENUM.FILE_PATHS.SCENE.TITLE)


func startRestMode():
	API_005_Player.stations.updateOnEnteringPanicroom()
	API_005_Player.currentChar.getComp("C_41_PERK_PROGRESSION").increment()
	API_005_Player.currentChar.getComp("C_39_KITSLOT_PROGRESSION").increment()
	
	get_tree().change_scene(ENUM.FILE_PATHS.SCENE.REST)
func startPanicMode():
	SokraTiles.parseTilemap("res://GameData/Tiled/TileMaps/Story/Suburban_One.json")
	get_tree().change_scene(ENUM.FILE_PATHS.SCENE.PANIC)





func _on_ActorMoveFinished():
	print("Actor move finished")
	Signals.emit_signal("Player_Turn_Started")



func beginActorTurn():
	#Signals.emit_signal("updateEntropy")
	Signals.emit_signal("Effect_Turn_Started")
	API_014_Behavior.loopThroughActor()
	Signals.emit_signal("Actor_Turn_Finished")




