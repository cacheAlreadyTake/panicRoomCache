extends Node
class_name _API_017_Cmd_AddCredits




static func run(parameter):
	API_005_Player.currentChar.getComp("C_9_CREDITS_ACCOUNT").value += int(parameter[0])


