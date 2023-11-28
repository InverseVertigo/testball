extends Node2D

func _ready():
	
	#var BallSpawnTimer = get_node("BallSpawnTimer")
	var ballSpawnTimer = $BallSpawnTimer 
	var ball_scene = preload("res://Ball.tscn")  # Replace with your ball scene path
	randomize()  # Initialize the random number generator
	GlobalSingleton.initial_ball_count=1100
	GlobalSingleton.ball_count=GlobalSingleton.initial_ball_count
	
	ballSpawnTimer.connect("timeout", Callable(self, "_on_BallSpawnTimer_timeout"))
	
	for i in range(GlobalSingleton.initial_ball_count):
		var ball_instance = ball_scene.instantiate()
		ball_instance.position = Vector2(randf_range(0, (get_viewport_rect().size.x)-200), randf_range(0, (get_viewport_rect().size.y)/2)-50)
		#ball_instance.position = Vector2(i*4,i*4)
		add_child(ball_instance)
		#ball_instance.position = Vector2(randf_range(0, get_viewport_rect().size.x), randf_range(0, get_viewport_rect().size.y))
		
		#ball_instance.linear_velocity = Vector2(randf_range(-300, 300), randf_range(-900, -100))


func _on_BallSpawnTimer_timeout():
	if (GlobalSingleton.ball_count<1000):
		var ball_scene = preload("res://Ball.tscn") 
		var ball_instance = ball_scene.instantiate()	
		add_child(ball_instance)
		ball_instance.position = Vector2(randf_range(0, (get_viewport_rect().size.x)-200), randf_range(0, (get_viewport_rect().size.y)/2)-50)
		GlobalSingleton.ball_count+=1
	
	# Set initial velocity or other properties as needed
	
