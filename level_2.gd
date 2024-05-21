extends Node2D

func _ready():
	get_tree().call_group("UI", "coleta_moedas")
