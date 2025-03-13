extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position=Vector2(200,300)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	#var mouse_pos = get_viewport().get_mouse_position()
	#position = mouse_pos
	pass
	
	
func _physics_process(_delta):
	pass
	var mouse_pos = get_viewport().get_mouse_position()
	sleeping=true
	global_position = mouse_pos
	sleeping=false
