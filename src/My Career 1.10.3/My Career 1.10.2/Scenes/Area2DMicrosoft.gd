extends Area2D


func _ElevadorEnable():
	$CollisionShape2D.disabled = false


func _ready():
	if GameManager.firsttimems == 0:
		$CollisionShape2D.disabled = true
	else: 
		$CollisionShape2D.disabled = false
