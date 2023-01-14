extends AnimatedSprite

func _on_area_body_entered(_body):
	show()
	yield(get_tree().create_timer(3.0), "timeout")
	hide()
