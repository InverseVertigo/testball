extends Area2D

var bodies_in_area = {}

func _ready():
	connect("body_entered", Callable(self, "_on_Area2D_body_entered"))
	connect("body_exited", Callable(self, "_on_Area2D_body_exited"))

func _on_Area2D_body_entered(body):
	if body is RigidBody2D:
		bodies_in_area[body] = true

func _on_Area2D_body_exited(body):
	bodies_in_area.erase(body)

func _physics_process(_delta):
	for body in bodies_in_area.keys():
		if body and body is RigidBody2D:
			body.linear_velocity.y -= 250

