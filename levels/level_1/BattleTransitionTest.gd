extends Button

@export var transitioner : TransitionToBattleNormal

func _on_pressed():
	transitioner.fade_out_and_in()
