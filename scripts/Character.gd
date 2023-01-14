extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
		$AnimatedSprite.play("walk")
	if Input.is_action_pressed("left"):
		velocity.x -= 1
		$AnimatedSprite.flip_h = 1
		$AnimatedSprite.play("walk")
	velocity = velocity.normalized() * speed

func _physics_process(_delta):
	$AnimatedSprite.flip_h = 0
	get_input()
	velocity = move_and_slide(velocity)
	if velocity.x == 0:
		$AnimatedSprite.play("default")
