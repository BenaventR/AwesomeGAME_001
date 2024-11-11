extends Node2D

var mfondo = preload("res://mauricio/efct sounds/ES_Cherry - Hara Noda.mp3")

func _ready() -> void:
	$musicadefondo.styream = mfondo
	$musicadefondo.play()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
