extends Node2D


 
func _ready():
	var listOfGems = $Gems.get_children()
	for i in listOfGems:
		i.gem_collected_signal.connect( _on_gem_collected ) #polacz gem_collected_signal 
		# _z funkcja on_gem_collected():
	pass # Replace with function body.


 


func _on_door_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file("res://level_02.tscn")


func _on_gem_collected():
	$HUD/GemsLabel.text = "Gems:" + str(Global.gems_collected)
