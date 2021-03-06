
extends Node




var backgroundFilepaths=[
	"res://Media/GUI/Titlescreen/background/backgroundFour.png",
	"res://Media/GUI/Titlescreen/background/backgroundThree.png",
	"res://Media/GUI/Titlescreen/background/backgroundTwopng.png",]


var animate:bool=false
func _ready():
		setRandomBackground()
		isready = true
		setSubtitle()

func _init() :
	isready = false



######################
## -- Background -- ##
######################
func setRandomBackground():
	var rn = Util.RNG.getRandomNumber(-1,backgroundFilepaths.size()) 
	var currentBackground = backgroundFilepaths[rn-1]
	
	var texture = load(currentBackground)
	get_node("background").texture=texture



#########################
## -- Textanimation -- ##
#########################
var isready
func _physics_process(delta):
	if isready:
		get_node("gametitle").animateTitleSprite()
		get_node("gametitle/dynamic subtitle").animateTitleSprite()



############################
	## -- Dynamic SubTitle -- ##
############################
func setSubtitle():
	var allSubtitle = Util.JSONParser.fileToDictionary(ENUM.FILE_PATHS.SUB_TITLES)
	
	var rn = Util.RNG.getRandomNumber(0,allSubtitle["inserts"].size()) 
	var subtitleToString = allSubtitle["inserts"][rn-1]
	
	get_node("gametitle/dynamic subtitle").append_bbcode(subtitleToString)


func _input(event):
	if event.is_pressed() and event.is_action("Interface_Generall_Escape"):
		get_tree().change_scene("res://Src/scenes/Unique/Titlescreen/Title.tscn")

















func _on_press(extra_arg_0: int) -> void:
	pass # Replace with function body.
