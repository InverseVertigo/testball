extends RigidBody2D

func _ready():
	# Setting the gravity scale for the ball
	gravity_scale = 1.0
	# Initial velocity
	#linear_velocity = Vector2(300, -300)
	linear_velocity = Vector2(0,0)
	
func _physics_process(_delta):
	var screen_size = get_viewport_rect().size
	var mapped_value = 1 + (position.x / screen_size.x) * 99
	
	# Bounce off the left and right sides
	#if (position.x  < 0 and linear_velocity.x < 0) or (position.x  > screen_size.x and linear_velocity.x > 0):
	if (position.x  < 0) or (position.x  > screen_size.x):
		linear_velocity.x = -(linear_velocity.x+20)

	# Bounce off the top and bottom
	#if (position.y - radius() < 0 and linear_velocity.y < 0) or (position.y + radius() > screen_size.y and linear_velocity.y > 0):
	
	#if (position.y - radius() < 0 ):
	#	linear_velocity.y = 30
	
	#if (position.y > screen_size.y-30):
	#	position.y = screen_size.y-30
	#	linear_velocity.y = -(mapped_value*25)

#func radius():
#	return get_node("CollisionShape2D").shape.radius
