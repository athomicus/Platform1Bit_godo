extends Node2D


var levelPath = ""
func _ready():
	Global.currentLevel += 1 # zwieksz Level
	levelPath = "res://level_" + str(Global.currentLevel) +".tscn"
	print(levelPath)
	var listOfGems = $Gems.get_children()
	for i in listOfGems:
		i.gem_collected_signal.connect( _on_gem_collected ) #polacz gem_collected_signal 
		# _z funkcja on_gem_collected():
	set_gems_label()


func _input(event):
	if event.is_action_pressed("reset_level"):
		Global.gems_collected = 0
		set_gems_label()
		Global.currentLevel -=1 
		get_tree().reload_current_scene.call_deferred() #
		
		#get_tree().reload_current_scene()

 


func _on_door_body_entered(body):
	if body == $Player:
		print("level:",levelPath)
		get_tree().change_scene_to_file(levelPath)


func _on_gem_collected():
	set_gems_label()
	
	
	
func set_gems_label():
	$HUD/GemsLabel.text = "Gems:" + str(Global.gems_collected)
	
