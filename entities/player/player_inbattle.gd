extends Area2D

@onready var anim_player : AnimationPlayer = $AnimationPlayer

func _on_animation_player_animation_finished(anim_name):
	anim_player.play("walking_into_battle")
