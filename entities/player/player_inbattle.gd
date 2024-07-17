extends Area2D

@onready var anim_player : AnimationPlayer = $AnimationPlayer
@onready var start : Marker2D = $"../Start_Position"
@onready var end : Marker2D = $"../End_Position"


func _ready():
	prepare_walking_into_battle()

func _on_animation_player_animation_finished(anim_name):
	anim_player.play("run")
	
func prepare_walking_into_battle():
	var start_poition = start.position
	var end_poition = end.position
	var run_anim = anim_player.get_animation("run")
	var position_index = 3
	var key_start = 0
	var key_end = 1
	run_anim.track_set_key_value(position_index, key_start, start_poition)
	run_anim.track_set_key_value(position_index, key_end, end_poition)
	anim_player.advance(0)



