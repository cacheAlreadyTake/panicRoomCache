extends Node
class_name _API_017_Cmd_NoClip




static func run(parameter:Array):
	if API_005_Player.currentChar.hasFlag("F_CHEAT_1_NO_CLIP") : API_005_Player.currentChar.arrOfFlags.erase("F_CHEAT_1_NO_CLIP")
	else                                                       : API_005_Player.currentChar.addFlag("F_CHEAT_1_NO_CLIP")


