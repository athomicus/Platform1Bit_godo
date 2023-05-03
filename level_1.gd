extends Node2D


 
func _ready():
	pass # Replace with function body.


func _input(event):
	#print(event)
	if event.is_action_pressed("return_to_main_menu"):
		get_tree().change_scene_to_file("res://main_menu.tscn")
