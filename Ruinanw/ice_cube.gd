extends Node2D





func _on_ice_kill_timeout() -> void:
	queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body.name == "playa":
		Global.score +=10
		body.currentHealth+=50
		body.healthChanged.emit(body.currentHealth)
		queue_free()
