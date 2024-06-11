extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$PauseMenu.hide()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PauseMenu.position = $Player.position
	if $GemArea.overlaps_body($Player):
		
		levels.levelsCleared += 1
		var new_scene = preload("res://scenes/interstitial_cutscene.tscn")
		get_tree().change_scene_to_packed(new_scene)

		
	if Input.is_action_pressed("ui_esc"):
		pause_game()


func pause_game():
		$PauseMenu.show()



func _on_resume_pressed():
	$PauseMenu.hide()


func _on_restart_pressed():
	get_tree().reload_current_scene()


func _on_quit_pressed():
	get_tree().quit()


