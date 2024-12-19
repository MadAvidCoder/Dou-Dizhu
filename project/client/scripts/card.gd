extends Sprite2D

func _process(_delta: float) -> void:
	self.set_texture(load("res://cards/%s.png" % self.get_meta("card")))
