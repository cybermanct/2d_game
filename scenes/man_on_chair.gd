extends Node2D

onready var screens = $"../KinematicBody2D/screens"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	$"../ost2".stop()
	$"../Blood".hide()
	screens.show()
	screens.play("pistol_idle")
	yield(get_tree().create_timer(3.0), "timeout")
	screens.play("pistol_prepare")
	$sfx.play()
	yield(get_tree().create_timer(7.0), "timeout")
	$sfx.stop()
	screens.play("pistol_shoot")
	$sfx_shoot.play()
	yield(get_tree().create_timer(5.0), "timeout")
	screens.play("pistol_end")
	yield(get_tree().create_timer(3.0), "timeout")
