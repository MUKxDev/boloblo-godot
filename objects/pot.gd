extends StaticBody2D

class_name Breakable

@export var starting_health : int = 3

@onready var animation_tree : AnimationTree = $AnimationTree

var currentHealth : int
var is_dead : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_tree.active = true
	is_dead = false
	currentHealth = starting_health
	# $AnimationPlayer.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (currentHealth == 0 && !is_dead):
		animation_tree["parameters/conditions/health_is_zero"] = true
		is_dead = true
		
func gotHit():
	if(currentHealth > 0):
		$AnimationPlayer.play("hit")
		currentHealth -=1
	
