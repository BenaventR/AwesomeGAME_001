extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$VBoxContainer/Button/click.play()


func _on_button_mouse_entered() -> void:
	$VBoxContainer/Button/hover.play(
		
	)


func _on_button_2_pressed() -> void:
	$VBoxContainer/Button2/click.play()

func _on_button_2_mouse_entered() -> void:
	$VBoxContainer/Button2/hover.play()