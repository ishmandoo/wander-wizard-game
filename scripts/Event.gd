extends Area2D

var Choice = preload("res://scripts/Choice.gd")

var height = -200
var width = 200

var choice

func _ready():
	connect("area_entered", self, "start")
	connect("area_exited", self, "reset")
	
func reset(_body):
	if is_instance_valid(choice):
		choice.queue_free()
		
func start(_body):
	root()
	
func root():
	pass

func clear():
	reset(null)

func conclude():
	clear()

func add_choice(text, options, ids):
	clear()
	choice = Choice.new(self, text, options, ids)
	add_child(choice)
