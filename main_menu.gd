extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


 


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")
	

func _input(event):
	if event.is_action_pressed("return_to_main_menu"):
		get_tree().quit()
