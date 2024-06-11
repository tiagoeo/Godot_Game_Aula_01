extends Node2D

func _ready():
	get_tree().call_group("UI", "mensagem", "Bem vindo, Level 2")
	get_tree().call_group("UI", "coleta_moedas")

func verificador_level(info, mensagem) -> void:
	match info:
		"moedas":
			if (GameGlobal.moedas >= 6):
				get_tree().call_group("UI", "mensagem", "Fim do Level")
