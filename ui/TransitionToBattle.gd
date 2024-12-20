extends Control

@onready var animation_tex : TextureRect = $TextureRect
@onready var animation_player : AnimationPlayer = $AnimationPlayer
@onready var transition_fx = preload("res://audio/battle/Encounter.mp3")

var res_path_normal_battle : PackedScene
var res_path_boss_battle : PackedScene

var normal_enemy_group : String = "normal_enemy"
var boss_enemy_group : String = "boss_enemy"
var res_path : String

func _ready():
	await owner.ready
	res_path_normal_battle = owner.battle
	res_path_boss_battle = owner.boss_battle
	self.visible = true
	animation_tex.visible = false
	
func transition(caller):
	if caller != null:
		AudioPlayer.play_FX(transition_fx, -12.0)
		Engine.time_scale = 0.1
		if (caller.is_in_group(normal_enemy_group)):
			res_path = res_path_normal_battle.resource_path
			animation_player.play("fade_out")
			
		elif (caller.is_in_group(boss_enemy_group)):
			res_path = res_path_boss_battle.resource_path
			animation_player.play("fade_out")
	else:
		print_debug("Cant play transition scene. Caller not Found")

func _on_animation_player_animation_finished(anim_name):
	# Path for Battle Scene should be declared in root Node for the Level
	SwitchScene.switch_scene(res_path)
