extends Control

# Run when start screen
func _ready():
	$CenterContainer/VBoxContainer/Start.pressed.connect(_on_start_pressed)
	$CenterContainer/VBoxContainer/Quit.pressed.connect(_on_quit_pressed)

# Click start button
func _on_start_pressed():
	get_tree().change_scene_to_file("res://game.tscn")

# Click quit button
func _on_quit_pressed():
	get_tree().quit()
