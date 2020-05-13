extends "res://scripts/Text.gd"

signal choice

func _init(my_position, my_text, my_width).(my_position, my_text, my_width):
	pass
	
func _ready():
	mouse_filter = MOUSE_FILTER_PASS
	connect("mouse_entered", self, "_mouse_entered")
	connect("mouse_exited", self, "_mouse_exited")

func _mouse_entered():
	set_color(Color.white)
	
func _mouse_exited():
	reset_color()
	
func _gui_input(event):
	if event.is_pressed():
		emit_signal("choice")
