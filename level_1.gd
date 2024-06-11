extends Node2D

func _ready() -> void:
	get_tree().call_group("UI", "mensagem", "Bem vindo, Level 1")

func _on_fim_area_1_body_entered(body):
	if (body.name == "Jogador"):
		if (GameGlobal.moedas >= 40):
			get_tree().change_scene_to_file.bind("res://level_2.tscn").call_deferred()
		else:
			get_tree().call_group("UI", "mensagem", "Você deve coletar 40 moedas")
