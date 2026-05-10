extends TextureButton

var normal_scale = Vector2(1, 1) # mouse out
var hover_scale = Vector2(1.1, 1.1) # mouse in

func _ready():
	pivot_offset = size / 2 # Scale from center
	
	mouse_entered.connect(_on_mouse_entered) # mouse in
	mouse_exited.connect(_on_mouse_exited) # mouse out

func _on_mouse_entered():
	var tween = create_tween()
	tween.tween_property(self, "scale", hover_scale, 0.1)

func _on_mouse_exited():
	var tween = create_tween()
	tween.tween_property(self, "scale", normal_scale, 0.1)
