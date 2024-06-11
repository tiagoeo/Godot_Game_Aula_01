extends Node2D

func _ready():
	get_tree().call_group("UI", "mensagem", "Bem vindo, Level 2")
	get_tree().call_group("UI", "coleta_moedas")
