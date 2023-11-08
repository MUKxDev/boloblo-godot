extends Node2D


@onready var animation_tree: AnimationTree = $"../AnimationTree"

func _on_area_2d_body_entered(body):
	#print(animation_tree["parameters/conditions/attack"])
	if (body is Breakable):
		body.gotHit()





