extends CanvasLayer

@onready var txtcontain = $TxtContainer
@onready var label = $TxtContainer/MarginContainer/Container/Label
# Called when the node enters the scene tree for the first time.
func _ready():
	hide_textbox()
	add_text("This is going to be added")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hide_textbox():
	label.text = ""
	$TxtContainer.hide()
	
func show_textbox():
	$TxtContainer.show()

func add_text(next_text):
	label.text = next_text
	show_textbox()
	
	
