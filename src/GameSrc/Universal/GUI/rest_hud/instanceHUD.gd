extends Node

func _ready():
	Gameloop.scene = self
	get_node("background").texture = Util.RNG.getRngBackground()
	
	
	
	var player = API_005_Player.currentChar
	
	var team = get_node("_005_Common_Team/Panels/1")
	team.get_node("Level/RichTextLabel").bbcode_text      = str(player.getCompValue("C_25_MAX_KITSETS"))
	team.get_node("Streetname/RichTextLabel").bbcode_text = str(player.getCompValue("C_44_STREETNAME"))
	team.get_node("Name/RichTextLabel").bbcode_text       = str(player.getCompValue("C_45_CHARACTER_NAME"))
	
	
	
	


