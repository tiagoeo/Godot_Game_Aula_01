extends Control

var url = "http://localhost/Game2D/transmitir.php"
var headers = ["Content-Type: application/x-www-form-urlencoded; charset=UTF-8"]

func _on_btn_login_pressed():
	$Panel/lblError.text = ''
	var dados = "email="+$Panel/txtEmail.text+"&senha="+$Panel/txtSenha.text
	$HTTPRequest.request(url, headers, HTTPClient.METHOD_POST, dados)
	$Panel/btnLogin.disabled = true

func _on_http_request_request_completed(result, response_code, headers, body):
	#print(str(response_code)+" - "+str(headers))
	
	if (response_code == 200):
		var data = body.get_string_from_utf8()
		#print(data)
		$Panel/btnLogin.disabled = false
		if (data != "Falha ao realizar o login!"):
			get_tree().change_scene_to_file.bind("res://level_1.tscn").call_deferred()
		else:
			info_login("Falha no Login")
	else:
		info_login("Problemas no servidor")
		$Panel/btnLogin.disabled = false
		
func info_login(info) -> void:
	$Panel/lblError.text = info
	print(info)
