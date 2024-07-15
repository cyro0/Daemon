extends CheckButton

@export var transitioner : TransitionToBattleNormal

func _on_toggled(toggled_on):
	transitioner.set_next_animation(toggled_on)
