extends Control

func _ready():
	pass # Replace with function body.


func _on_Start_pressed():
	get_tree().change_scene("res://Node2D.tscn")


func _on_Quit_pressed():
	get_tree().quit()
