extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#var random_float = 
	var rred = round(randf() * 100) / 100
	var rgreen = round(randf() * 100) / 100
	var rblue = round(randf() * 100) / 100
	var rtransparent = round(randf() * 100) / 100
	self_modulate=Color(rred,rgreen, rblue, rtransparent)
	
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if randf()<0.01:
		var rred = round(randf() * 100) / 100
		var rgreen = round(randf() * 100) / 100
		var rblue = round(randf() * 100) / 100
		#var rtransparent = round(randf() * 100) / 100
		var rtransparent = round((randf() * 0.5 + 0.5) * 100) / 100
		self_modulate=Color(rred,rgreen, rblue, rtransparent)
