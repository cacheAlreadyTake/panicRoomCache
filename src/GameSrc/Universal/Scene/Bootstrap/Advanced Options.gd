extends Button




func _on_pressed() -> void:
	visible = false
	get_node("../optionsPanel").visible = true
	get_node("../Event Info").visible = false
