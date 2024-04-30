extends Node2D



func _on_fim_area_1_body_entered(body):
	if (body.name == "Jogador"):
		get_tree().change_scene_to_file.bind("res://level_2.tscn").call_deferred()
