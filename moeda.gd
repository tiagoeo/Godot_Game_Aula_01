extends Area2D


func _on_body_entered(body):
	if (body.name == "Jogador"):
		# GameGlobal.moedas = GameGlobal.moedas + 1
		GameGlobal.moedas += GameGlobal.valor_moeda_amarela
		print("Coletou Moeda: "+str(GameGlobal.moedas))
		$AudioStreamPlayer2D.play()
		#queue_free()
