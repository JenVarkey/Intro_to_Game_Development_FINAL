extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var image = null
	match levels.levelsCleared:
		1:
			image = preload("res://art/Cutscene artwork/Red.png")
		2:
			image = preload("res://art/Cutscene artwork/Orange.png")
		3:
			image = preload("res://art/Cutscene artwork/Yellow.png")
		4:
			image = preload("res://art/Cutscene artwork/Grn.png")
		5:
			image = preload("res://art/Cutscene artwork/Blu.png")
		6:
			image = preload("res://art/Cutscene artwork/Ourple.png")
	$Image.set_texture(image)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_exit_pressed():
	get_tree().quit()


func _on_next_scene_pressed():
	var nextScene = null
	match levels.levelsCleared:
		1: 
			nextScene = preload("res://scenes/level_two.tscn")
		2:
			nextScene = preload("res://scenes/level_three.tscn")
		3:
			nextScene = preload("res://scenes/level_four.tscn")
		4:
			nextScene = preload("res://scenes/level_five.tscn")
		5:
			nextScene = preload("res://scenes/level_six.tscn")
	get_tree().change_scene_to_packed(nextScene)
