extends "res://scripts/Event.gd"
	
func root():
	add_choice("Would you like to hear a story?", ["Sure!", "Maybe later."], ["story", "no_story"])

func story():
	add_choice("Me too. Do you know any?", ["No."], ["conclude"])
	
func no_story():
	add_choice("I can wait.", ["Ok"], ["conclude"])
