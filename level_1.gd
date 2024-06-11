extends Node2D

func _ready() -> void:
	get_tree().call_group("UI", "mensagem", "Bem vindo, Level 1")
	GameGlobal.moedas = 0

func _on_fim_area_1_body_entered(body):
	if (body.name == "Jogador"):
		if (GameGlobal.moedas >= 4):
			get_tree().change_scene_to_file.bind("res://level_2.tscn").call_deferred()
		else:
			get_tree().call_group("UI", "mensagem", "Você deve coletar 4 moedas")

func _on_fim_area_sair_mapa_body_entered(body):
	if (body.name == "Jogador"):
		get_tree().call_group("UI", "mensagem", "Saindo da área de Game, retornando em 3 segundos")
		await get_tree().create_timer(3.0).timeout
		get_tree().reload_current_scene()
