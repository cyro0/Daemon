extends Control

class_name TransitionToBattleNormal

@export var scene_to_load : PackedScene

@onready var animation_tex : TextureRect = $TextureRect
@onready var animation_player : AnimationPlayer = $AnimationPlayer

func _ready():
	animation_tex.visible = false
	
func fade_out_and_in():
	animation_player.play("fade_out")


func _on_animation_player_animation_finished(anim_name):
	if (scene_to_load != null && anim_name == "fade_out"):
		get_tree().change_scene_to_packed(scene_to_load)

func _on_snail_body_entered(body):
	fade_out_and_in()
