extends Timer


@export var ice_scene: PackedScene

#var platform1 = Vector2(randi_range(690,1130),390)
#var platform2 = Vector2(randi_range(150,600),770)
#var platform3 = Vector2(randi_range(1210,1660),770)


func _on_timeout() -> void:
	var ice = ice_scene.instantiate()
	add_child(ice)
	var plat = [Vector2(randi_range(690,1130),390),Vector2(randi_range(150,600),770),Vector2(randi_range(1210,1660),770)]
	var pos = plat.pick_random()
	ice.position = pos
	ice.add_to_group("icecubes")
	wait_time = randi_range(2,4)
