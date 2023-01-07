extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_blood_trigger_body_entered(_body):
	show()
	$"../ost".pitch_scale = 0.4
	$"../KinematicBody2D".speed = 100
	$blood_wall/CollisionShape2D.disabled = false
