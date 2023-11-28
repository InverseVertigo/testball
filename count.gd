#COUNT
extends Label

func _process(delta: float) -> void:
	set_text("Count %d" % GlobalSingleton.ball_count)
