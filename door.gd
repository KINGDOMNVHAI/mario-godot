extends Area2D

var is_open = false
var player_inside = false

@onready var sprite = $Sprite2D

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

	sprite.texture = preload("res://assets/backgrounds/doorClosed_mid.png")


func _process(delta):
	if player_inside and is_open:
		if Input.is_action_just_pressed("enter_door"):
			show_win_popup()


func _on_body_entered(body):
	if body.name == "Mario":
		player_inside = true

		if body.has_key:
			open_door()


func _on_body_exited(body):
	if body.name == "Mario":
		player_inside = false


func open_door():
	is_open = true
	sprite.texture = preload("res://assets/backgrounds/doorOpen_mid.png")

func show_win_popup():
	var popup = get_tree().current_scene.find_child("WinPopup", true, false)
	print("show_win_popup")
	print(popup)

	if popup:
		popup.visible = true
		print(popup.visible)
