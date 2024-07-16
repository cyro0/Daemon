extends Control

#var battle_scene = get_tree().current_scene.normal_battle_scene
#print(battle_scene.resource_path)
#SceneSwitcher.switch_scene(battle_scene.resource_path)

func handle_transition(caller):
	if caller.is_in_group("normal_enemy"):
		pass
		#transition_normal_battle()
	
