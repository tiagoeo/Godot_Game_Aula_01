extends Area2D

var moeda:int = 1



func _on_body_entered(body):
	if (body.name == "Jogador"):
		print("Coletou Moeda")
		queue_free()
