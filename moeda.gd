extends Area2D


func _on_body_entered(body):
	if (body.name == "Jogador"):
		# - Variáverl Global moedas
		# GameGlobal.moedas = GameGlobal.moedas + 1
		GameGlobal.moedas += GameGlobal.valor_moeda_amarela
		print("Coletou Moeda: "+str(GameGlobal.moedas))
		
		# - Audio
		$AudioStreamPlayer2D.play()
		await $AudioStreamPlayer2D.finished
		queue_free()
