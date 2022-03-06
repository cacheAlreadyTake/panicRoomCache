extends Object
class_name _005_In


func _init():
	Signals.connect("Player_Turn_Started",self,"setPlayerTurnOn")
	Signals.connect("Player_Turn_Finished",self,"setPlayerTurnOff")


func setPlayerTurnOn():
	API_005_Player.inputMode = true


func setPlayerTurnOff():
	API_005_Player.inputMode = false

