extends Area2D

var moeda:int = 1



func _on_body_entered(body):
	if (body.name == "Jogador"):
		# GameGlobal.moedas = GameGlobal.moedas + 1
		GameGlobal.moedas += 1		
		print("Coletou Moeda: "+str(GameGlobal.moedas))
		queue_free()
