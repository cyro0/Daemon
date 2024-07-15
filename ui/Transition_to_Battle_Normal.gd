extends Control

class_name TransitionToBattleNormal

@export var scene_to_load : PackedScene

@onready var animation_tex : TextureRect = $TextureRect
@onready var animation_player : AnimationPlayer = $AnimationPlayer
@onready var transition_fx = preload("res://audio/battle/Encounter.mp3")

func _ready():
	animation_tex.visible = false
	
func transition():
	AudioPlayer.play_FX(transition_fx, -12.0)
	Engine.time_scale = 0.1
	animation_player.play("fade_out")
	


func _on_animation_player_animation_finished(anim_name):
	if (scene_to_load != null && anim_name == "fade_out"):
		get_tree().change_scene_to_packed(scene_to_load)

func _on_snail_body_entered(body):
	transition()
