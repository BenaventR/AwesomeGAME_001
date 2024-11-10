extends Node2D

@export var bullet_scene: PackedScene


func _on_playa_shoot(pos, dir):
	var bullet = bullet_scene.instantiate()
	add_child(bullet)
	bullet.position=pos
	bullet.direction = dir
	bullet.add_to_group("bullets")
