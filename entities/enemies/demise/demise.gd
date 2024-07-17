extends Enemy

func _on_body_entered(body):
	battle_transitioner.transition(self)
