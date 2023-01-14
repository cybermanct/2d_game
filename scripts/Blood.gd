extends Sprite

func _on_blood_trigger_body_entered(_body):
	show()
	$"../ost".pitch_scale = 0.4
	$"../KinematicBody2D".speed = 100
	#$"../Blood/blood_wall/CollisionShape2D".disabled = 1
