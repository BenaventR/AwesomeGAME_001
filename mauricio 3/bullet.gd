extends Area2D

var speed : int = 800
var direction: Vector2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += speed * direction *delta


func _on_timer_timeout() -> void:
	queue_free()
