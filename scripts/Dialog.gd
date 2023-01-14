extends Node2D

var path = "res://scripts/dialogs.json"
var dict = {}
var selected_dialog = 0

func load_json_file(path):
	var file = File.new()
	file.open(path, file.READ)
	var text = file.get_as_text()
	dict = JSON.parse(text)
	if dict.error != OK:
		print("[load_json_file] Error loading JSON file '" + str(path) + "'.")
		print("\tError: ", dict.error)
		print("\tError Line: ", dict.error_line)
		print("\tError String: ", dict.error_string)
		return null
	var obj = dict.result
	return obj

func print_dialog(loaded_object, key, value):
	load_json_file(loaded_object)
	print(loaded_object)
	$Background/Dialog_back/Dialog.text = dict.result[key][value]

func change_dialog_color():
	$Background/Option1.color = Color.webgray
	$Background/Option2.color = Color.webgray
	
	match selected_dialog:
		0:
			$Background/Option1.color = Color.gray
		1:
			$Background/Option2.color = Color.gray

func _ready():
	change_dialog_color()

func _input(_event):
	if Input.is_action_just_pressed("ui_down"):
		selected_dialog = (selected_dialog + 1) % 2;
		change_dialog_color()
	elif Input.is_action_just_pressed("ui_up"):
		if selected_dialog > 0:
			selected_dialog = selected_dialog - 1
		else:
			selected_dialog = 1
		change_dialog_color()
	elif Input.is_action_just_pressed("ui_enter"):
		match selected_dialog:
			0:
				print_dialog(path, "dialog1", "test")	
			1:
				print_dialog(path, "dialog1", "test2")
