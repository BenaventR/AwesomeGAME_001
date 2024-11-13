extends Control

@onready var start: AudioStreamPlayer = $VBoxContainer/Button/start

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Ruinanw/main.tscn")


func _on_button_exit_pressed() -> void:
	get_tree().quit()
<<<<<<< HEAD


func _on_button_pressed() -> void:
	$VBoxContainer/Button/AudioStreamPlayer.play()


func _on_button_mouse_entered() -> void:
	$VBoxContainer/Button/AudioStreamPlayer.play()


func _on_button_2_pressed() -> void:
	$VBoxContainer/Button/AudioStreamPlayer.play()


func _on_button_2_mouse_entered() -> void:
	$VBoxContainer/Button/AudioStreamPlayer.play()
||||||| 471f27a
=======


func _on_button_pressed() -> void:
	$VBoxContainer/Button/click.play()


func _on_button_mouse_entered() -> void:
	$VBoxContainer/Button/hover.play()


func _on_button_2_pressed() -> void:
	$VBoxContainer/Button2/click.play()

func _on_button_2_mouse_entered() -> void:
	$VBoxContainer/Button2/click2.play()
>>>>>>> 97473f49de37ab2b11805d2dd8e8fd6e2cd312a4
