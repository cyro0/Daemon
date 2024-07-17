extends State

class_name BattleState

@export var player : CharacterBody2D

func on_enter():
	playback.travel("battle")
	player.make_player_walk(0,0)
	
