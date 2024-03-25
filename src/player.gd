extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -450.0
var lives = 3
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animatedSprite = $AnimatedSprite2D



func _physics_process(delta):
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		

	# Handle jump.
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		
		velocity.y = JUMP_VELOCITY
		
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		animatedSprite.flip_h = velocity.x < 0
		animatedSprite.play("run")
		
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animatedSprite.play("idle")
	
	if velocity.y != 0:
		animatedSprite.play("jump")
	print(position.x)
	move_and_slide()

func on_body_entered(body):
	pass
