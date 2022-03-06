extends Node



var currentOptionForm
func _enter_tree() -> void: OS.window_size = Vector2(1100,550)



func _on_default_pressed() -> void:
	OS.window_fullscreen = !OS.window_fullscreen
	Gameloop.startTitleMode()


func _on_DioJSONes_pressed():
	OS.window_fullscreen = !OS.window_fullscreen
	get_tree().change_scene("res://GameSrc/Content-Creator/Main.tscn")


func _on_options_pressed() -> void:
	get_node("optionsPanel").visible = true;
	get_node("options").visible = false
	get_node("RichTextLabel").visible = false




func _on_kitsToStart_pressed() -> void:
	removeOtherOptionIfNeccessary()
	addScene("res://GameSrc/Universal/Scene/Bootstrap/GameInit/Submenues/Starting Kitsets/StartingKits.tscn")

func _on_bootMode_pressed() -> void:
	removeOtherOptionIfNeccessary()
	addScene("res://GameSrc/Universal/Scene/Bootstrap/GameInit/Submenues/Bootmode/BootMode.tscn")

func _on_communityContent_pressed() -> void:
	removeOtherOptionIfNeccessary()
	addScene("res://GameSrc/Universal/Scene/Bootstrap/GameInit/Submenues/content Manager/ContentManager.tscn")




func removeOtherOptionIfNeccessary():
	if is_instance_valid(currentOptionForm):
		get_node("optionsPanel/form").remove_child(currentOptionForm)
		currentOptionForm = null

func addScene(filepath:String):
	var loadedScene = load(filepath)
	currentOptionForm = loadedScene.instance()
	get_node("optionsPanel/form").add_child(currentOptionForm)







