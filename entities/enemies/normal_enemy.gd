extends Area2D

class_name NormalEnemy

func touched(body):
	if(body.is_in_group("player")):
		if (get_tree().current_scene.normal_battle_scene != null):
			TransitionHandler.handle_transition(self)
