extends Node2D


signal result(choice_id)

var Text = preload("res://scripts/Text.gd")
var Option = preload("res://scripts/Option.gd")

var width = 200

var text
var options
var ids
var parent

var next_position

func _init(my_parent, my_text, my_options, my_ids):
	position = Vector2(-width/2, -140)
	next_position = position
	parent = my_parent
	text = my_text
	options = my_options
	ids = my_ids
	
func _ready():
	add_text(text)
	var i = 0
	for option in options:	
		yield(get_tree(), "idle_frame")
		add_option(option, ids[i])
		i += 1

func add_text(data):
	var item = Text.new(next_position, data, width)
	place_item(item)
	
func add_option(data, id):
	var item = Option.new(next_position, data, width, id)
	item.connect("choice", parent, id)
	place_item(item)
	
func place_item(item):
	add_child(item)
	next_position += Vector2(0, item.get_line_count() * (item.get_line_height() + item.get_constant("line_spacing")))
