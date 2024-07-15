extends State

class_name AirState

@export var ground_state : State
@export var double_jump_velocity : float = -350
@export var double_jump_animation : String = "double_jump"
@export var landing_animation : String = "landing"
var input_after_landing : bool = false

var has_double_jumped = false

func state_process(delta):
	if(character.is_on_floor()):
		next_state = ground_state
		
func state_input(event : InputEvent):
	if(event.is_action_pressed("jump") && !has_double_jumped):
		double_jump()

func on_exit():
	if(next_state == ground_state):
		has_double_jumped = false
	
	

func double_jump():
	character.velocity.y = double_jump_velocity
	playback.travel(double_jump_animation)
	has_double_jumped = true
