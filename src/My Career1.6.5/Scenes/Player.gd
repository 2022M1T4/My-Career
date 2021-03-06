extends KinematicBody2D

# Declaração da variavel velocidade 

onready var animationTree = $AnimationTree
onready var stateMachine = animationTree.get("parameters/playback")
onready var iconUnmuted =  get_node("CanvasLayer").get_node("SoundUnmuted")
onready var iconMuted = get_node("CanvasLayer").get_node("SoundMuted")
# Definir qual animação vai rodar 

func _ready():
	stateMachine.travel("Idle")
# Quando executado o estado da animação do player se mantem no Idle que siginifica parado

	if int (Dialogic.get_variable("godindice")) >= 0 and int (Dialogic.get_variable("godindice")) < 20:
		$BackgroundMusic.stream = load("res://Audios/Track 1.mp3")
		$BackgroundMusic.play()
	
	elif int (Dialogic.get_variable("godindice")) > 20 and int (Dialogic.get_variable("godindice")) < 30:
		$BackgroundMusic.stream = load("res://Audios/Track 2.mp3")
		$BackgroundMusic.play()
		
	elif int (Dialogic.get_variable("godindice")) > 30 and int (Dialogic.get_variable("godindice")) < 40:
		$BackgroundMusic.stream = load("res://Audios/Track 3.mp3")
		$BackgroundMusic.play()

	elif int (Dialogic.get_variable("godindice")) > 40 and int (Dialogic.get_variable("godindice")) < 50:
		$BackgroundMusic.stream = load("res://Audios/Track 4.mp3")
		$BackgroundMusic.play()

	elif int (Dialogic.get_variable("godindice")) > 50 :
		$BackgroundMusic.stream = load("res://Audios/Track 5.mp3")
		$BackgroundMusic.play()

func _physics_process(delta):
	var velocity = Vector2.ZERO
# Delcarando a variavel vetor

	if Input.is_action_pressed("ui_up"):
		velocity.y -= GameManager.velocidadevertical
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo y decrementa a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_down"):
		velocity.y += GameManager.velocidadevertical
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo y acrescenta a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_right"):
		velocity.x += GameManager.velocidadehorizontal
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo x acrescenta a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= GameManager.velocidadehorizontal
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo x decrementa a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	else:
		stateMachine.travel("Idle")
# Caso o personagem não se movimente a animação da sprite é setada com  o estado parado.
	
	move_and_slide(velocity)
# A função de movimento de objetos recebe o vetor de velocidade.

func _on_Mute_pressed():
	if $BackgroundMusic.playing == true:
		$BackgroundMusic.volume_db = -1000.0
		$BackgroundMusic.playing = false
		iconUnmuted.hide()
		iconMuted.show()
		
	else:
		$BackgroundMusic.volume_db = -10.0
		$BackgroundMusic.playing = true
		iconUnmuted.show()
		iconMuted.hide()
		

func _on_Button2_mouse_entered():
	$Buttom.playing = true


func _on_Mute_mouse_entered():
	$Buttom.playing = true


func _on_Button_mouse_entered():
	$Buttom.playing = true
