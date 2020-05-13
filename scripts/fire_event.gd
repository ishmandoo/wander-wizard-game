extends "res://scripts/Event.gd"

var time
onready var player_sprite = get_node("/root/Node2D/Player/Sprite")

func root():
	add_choice("Oh… stranger… why don’t you come and warm yourself by the fire?", ["[Sit]", "No thanks."], ["sit", "bad_ending"])
	
func sit():
	time = OS.get_ticks_msec()
	$Sprite.animation = "player"
	print(player_sprite)
	player_sprite.hide()
	add_choice("[You sit at the fire. It feels warm.]", ["[Stand up]", "[Continue sitting]"], ["consider_leaving", "sit"])
	
func consider_leaving():
	$Sprite.animation = "default"
	player_sprite.show()
	if OS.get_ticks_msec() - time > 5000:
		add_choice("It was nice to have some company.", ["Ok"],  ["conclude"])
	else:
		add_choice("Going somewhere? It’s so nice to have company. I’ve been alone here a long time. Why don’t you sit back down?", ["Yes, I've got a long way to go.", "I guess I can sit a bit longer."],  ["bad_ending", "sit"])
	
func bad_ending():
	add_choice("[The man’s face turns black and he growls.]", ["Ok"],  ["conclude"])

