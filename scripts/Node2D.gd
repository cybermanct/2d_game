extends Node2D

onready var screens = $KinematicBody2D/screens
onready var dialogNum

func _on_area_body_entered(_body):
	dialogNum = "dialog1"
	$KinematicBody2D/Dialog.visible = true
	_on_Dialog_dialog("dialog1", "1")

func _on_Dialog_dialog(key, value):
	$KinematicBody2D/Dialog._ready()
	get_node("KinematicBody2D/Dialog").print_dialog(key, value)

func _input(event):
	if Input.is_action_just_pressed("ui_enter"):
		match $KinematicBody2D/Dialog.selected_dialog:
			0:
				$KinematicBody2D/Dialog.print_dialog(dialogNum, "0")
			1:
				$KinematicBody2D/Dialog.print_dialog(dialogNum, "1")
