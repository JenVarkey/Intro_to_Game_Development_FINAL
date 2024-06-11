extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	levels.levelsCleared = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_start_button_pressed():
	var new_scene = preload("res://scenes/level_one.tscn")
	get_tree().change_scene_to_packed(new_scene)



func _on_exit_button_pressed():
	get_tree().quit()
