extends Button



func _on_Button_pressed() -> void:
	DavINCi.FSM_Hub.changeSzeneByInputEnum(5,0)
	API_005_Player.stations
