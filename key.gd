extends Area2D

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	print(body.name)
	if body.has_method("get_key"):
		print("cham key")
		body.get_key()
		queue_free()
