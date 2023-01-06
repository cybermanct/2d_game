extends Node2D

var selected_menu = 0

func change_menu_color():
	$NewGame.color = Color.webgray
	$QuitGame.color = Color.webgray
	
	match selected_menu:
		0:
			$NewGame.color = Color.gray
		1:
			$QuitGame.color = Color.gray

func _ready():
	change_menu_color()

func _input(_event):
	if Input.is_action_just_pressed("ui_down"):
		selected_menu = (selected_menu + 1) % 2;
		change_menu_color()
	elif Input.is_action_just_pressed("ui_up"):
		if selected_menu > 0:
			selected_menu = selected_menu - 1
		else:
			selected_menu = 1
		change_menu_color()
	elif Input.is_action_just_pressed("ui_enter"):
		match selected_menu:
			0:
				# New game
				get_tree().change_scene("res://Node2D.tscn")
			1:
				# Quit game
				get_tree().quit()
