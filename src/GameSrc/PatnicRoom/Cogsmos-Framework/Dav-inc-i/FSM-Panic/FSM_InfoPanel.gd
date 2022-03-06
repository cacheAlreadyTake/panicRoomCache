extends Object
class_name _DavINCi_FSM_InfoPanel


# ----- INITIALICE ----------------------------------------------------------- ##


func _init() :   Signals.connect("animation_finished",self,"freeInfoPnale")


var isRoot       : bool
var isSame       : bool

var infoPanelInstance
var newInfopanelInstance

var infoPanelToLoad = {
	ENUM.INPUT_PANIC.INFO.KITS    : "res://GameSrc/PatnicRoom/scenes/Gameloop/PanicMode/Subscenes/Sidepanel/Kits/Kits.tscn",
	ENUM.INPUT_PANIC.INFO.JURNAL  : "res://GameSrc/PatnicRoom/scenes/Gameloop/PanicMode/Subscenes/Sidepanel/Inventory/Inv.tscn",
	ENUM.INPUT_PANIC.INFO.MONITOR : "res://GameSrc/PatnicRoom/scenes/Gameloop/PanicMode/Subscenes/Sidepanel/Monitor/Monitor.tscn",
	ENUM.INPUT_PANIC.INFO.NEWS    : "res://GameSrc/PatnicRoom/scenes/Gameloop/PanicMode/Subscenes/Sidepanel/News/News.tscn",
}
 


# ----- INPUT HANDLER -------------------------------------------------------- ##


func takeActionByEnum(inputEnum, inputType):

	# input: F3 #
	if isInputToggleCLI(inputEnum): manageCLI()
	
	# input: N || M || J || K #
	else:
		var scene = infoPanelToLoad[inputEnum]
		var cache = load(scene)
		newInfopanelInstance = cache.instance()
		
		if is_instance_valid(infoPanelInstance): playExitAnimation()
		else:                                    playEnterAnimation()
		


# ----- CLI ------------------------------------------------------------------ ##


var cliNode
var isCLIActive  : bool = true


func manageCLI():
	isCLIActive = !isCLIActive

	if !isCLIActive:
		cliNode = load("res://GameSrc/PatnicRoom/scenes/Unique/API_017_CLI/CLI.tscn").instance()
		DavINCi.gameloopScene.add_child(cliNode)
	
	else: DavINCi.gameloopScene.remove_child(cliNode)


# ----- VALIDATOR ------------------------------------------------------------ ##
		

func isInputToggleCLI(inputEnum): return inputEnum == ENUM.INPUT_PANIC.INPUTS.INFO.CLI



# ----- ANIMATION ------------------------------------------------------------ ##


func playEnterAnimation():
	DavINCi.gameloopScene.get_node("SidePanel").add_child(newInfopanelInstance)
	DavINCi.gameloopScene.get_node("SidePanel").get_child(0).buildRef(self)
	infoPanelInstance = newInfopanelInstance
	

func playExitAnimation():
	DavINCi.gameloopScene.get_node("SidePanel").get_child(0).exitAnimation(self)




	




