extends Sprite

func _ready():
		if get_node_or_null('DialogNode') == null: #Verifica se outro diálogo ja esta em cena
			Dialogic.set_variable("godindice", 52)
			var dialog = Dialogic.start(str("AlanTuring-",GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 
			

func _on_TerreoNasa_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoNasa.tscn")
	#Função que muda de cena
