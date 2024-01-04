extends CharacterBody2D

@export var	move_speed: float = 50
var screen_size
@export var starting_direction : Vector2 = Vector2(0,1)

@onready var animation_tree = $AnimationTree
@onready var state_machine = animation_tree.get("parameters/playback")

func _ready():
	animation_tree.set("parameters/idle/blend_position",starting_direction)
	
	screen_size = get_viewport_rect().size

func _physics_process(_delta):
	var input_direction = Vector2(
		Input.get_action_strength("right2") - Input.get_action_strength("left2"),
		Input.get_action_strength("down2") - Input.get_action_strength("up2")
	)
	
	update_animation_parameters(input_direction)
	
	velocity = input_direction * move_speed
	
	if velocity.length() >0:
		velocity = velocity.normalized() * move_speed
	
	move_and_slide()
	
	pick_new_state()
	
	position += velocity * _delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	
func update_animation_parameters(move_input : Vector2):
	if(move_input != Vector2.ZERO):
			animation_tree.set("parameters/walk/blend_position", move_input)
			animation_tree.set("parameters/idle/blend_position", move_input)
			
func pick_new_state():
	if (velocity != Vector2.ZERO):
		state_machine.travel("walk")
	else:
		state_machine.travel("idle")
