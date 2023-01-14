extends Sprite


func _on_blood_trigger_body_entered(_body):
	show()
	$"../ost".stop()
	$"../ost2".play()
	$"../KinematicBody2D".speed = 100
	#$"../Blood/blood_wall/CollisionShape2D".disabled = 1
