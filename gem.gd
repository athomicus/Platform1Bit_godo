extends Area2D


signal gem_collected_signal


func _on_body_entered(body):
	if body.name == "Player":
		Global.gems_collected +=1
		#print("Gem",Global.gems_collected )
		gem_collected_signal.emit()
		queue_free()
