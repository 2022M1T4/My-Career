extends Node2D

var pontos
var PONTOS_MAX = 315

func _process(delta):

	$LabelQZSI.text = str(Dialogic.get_variable("siqzpoints"))
	$LabelEXPSI.text = str(Dialogic.get_variable("sixppoints"))
	var qzsi = float("siqzpoints")
	var expsi = float("siexppoints")
	var divisaosi
	divisaosi = (qzsi + expsi) / PONTOS_MAX * 100
	$LabelGeralSI.text = str(stepify(divisaosi,0.01)) + "%"

	$LabelQZCC.text = str(Dialogic.get_variable("ccqzpoints"))
	$LabelEXPCC.text = str(Dialogic.get_variable("ccxppoints"))
	var qzcc = float("ccqzpoints")
	var expcc = float("ccexppoints")
	var divisaocc
	divisaocc = (qzcc + expcc) / PONTOS_MAX * 100
	$LabelGeralCC.text = str(stepify(divisaocc,0.01)) + "%"
	
	$LabelQZEC.text = str(Dialogic.get_variable("ecqzpoints"))
	$LabelEXPEC.text = str(Dialogic.get_variable("ecxppoints"))
	var qzec = float("ecqzpoints")
	var expec = float("ecexppoints")
	var divisaoec
	divisaoec = (qzec + expec) / PONTOS_MAX * 100
	$LabelGeralEC.text = str(stepify(divisaoec,0.01)) + "%"
	
	$LabelQZES.text = str(Dialogic.get_variable("esqzpoints"))
	$LabelEXPES.text = str(Dialogic.get_variable("esxppoints"))
	var  qzes = float("esqzpoints")
	var  expes = float("esexppoints")
	var divisaoes
	divisaoes = (qzes + expes) / PONTOS_MAX * 100
	$LabelGeralES.text = str(stepify(divisaoes,0.01)) + "%"
	
	

func _on_ButtonSair_pressed():
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
	pass # Replace with function body.
