extends Enemy

func _on_body_entered(body):
	if(body.is_in_group("player")):
		if (get_tree().current_scene.normal_battle_scene != null):
			var battle_scene = get_tree().current_scene.normal_battle_scene
			print(battle_scene.resource_path)
			SceneSwitcher.switch_scene(battle_scene.resource_path)
	
