extends RigidBody2D

export var min_speed = 200
export var max_speed = 400
var mob_types = ["walk", "swim", "fly"]

func _ready():
		$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	
func _on_Visiblity_screen_exited():
	queue_free();

func _on_start_game():
	queue_free()