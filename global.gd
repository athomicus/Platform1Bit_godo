extends Node

var gems_collected = 0 
var currentLevel = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event.is_action_pressed("return_to_main_menu"):
		get_tree().quit()
