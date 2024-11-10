extends ProgressBar

@export var player = PackedScene

func _on_playa_health_changed(HP) -> void:
	value = HP
