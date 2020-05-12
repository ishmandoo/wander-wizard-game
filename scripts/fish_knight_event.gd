extends "res://scripts/Event.gd"

func root():
	add_choice("Tell me a tale as long as this stick.", ["I'll give it a go!", "I'm not much for stories."], ["story_start", "conclude"])
	
func story_start():
	add_choice("[You start your story...]", ["There once was an old fisherman...", "There once was a brave knight..."], ["fish1", "knight1"])
func fish1():
	add_choice("There once was an old fisherman...", ["Who caught a magic fish...", "Who slept with the king's wife..."], ["fish1_1", "fish1_2"])
func fish1_1():
	add_choice("Who caught a magic fish...", ["The fish spoke a single phrase before dying...", "The fish told the man about a sunken ship of treasures..."], ["fish1_1_1", "fish1_1_2"])
func fish1_1_1():
	add_choice("The fish spoke a single phrase before dying...", ["It was \"throw me back, you fool!\""], ["conclude"])
func fish1_1_2():
	add_choice("The fish told the man about a sunken ship of treasures...", ["The man dove into the waters to find the treasure...", "The fish said the treasure was friendship..."], ["fish1_1_2_1", "fish1_1_2_2"])
func fish1_1_2_1():
	add_choice("The man dove into the waters to find the treasure...", ["But he didn't find it."], ["conclude"])
func fish1_1_2_2():
	add_choice("The fish said the treasure was friendship...", ["Unamused, the man ate the fish."], ["conclude"])
func fish1_2():
	add_choice("Who slept with the king's wife...", ["The man was caught and summarily executed."], ["conclude"])
func knight1():
	add_choice("There once was a brave knight...", ["Who wandered into the sea...", "Who slayed a noble unicorn..."], ["knight1_1", "knight1_2"])
func knight1_1():
	add_choice("Who wandered into the sea...", ["He drowned."], ["conclude"])
func knight1_2():
	add_choice("Who slayed a noble unicorn...", ["The king invited him to the castle...", "Ashamed by what he had done, he wept..."], ["knight1_2_1", "knight1_2_2"])
func knight1_2_1():
	add_choice("The king invited him to the castle...", ["And executed him for killing his pet unicorn."], ["conclude"])
func knight1_2_2():
	add_choice("Ashamed by what he had done, he wept...", ["Soon a giant came along...", "Soon a fairy came along..."], ["knight1_2_2_1", "knight1_2_2_2"])
func knight1_2_2_1():
	add_choice("Soon a giant came along...", ["And clubbed him to death."], ["conclude"])
func knight1_2_2_2():
	add_choice("Soon a fairy came along...", ["And seeing the man crying, gave him one wish...", "And seeing the man, turned to flee..."], ["knight1_2_2_2_1", "knight1_2_2_2_2"])
func knight1_2_2_2_1():
	add_choice("And seeing the man crying, gave him one wish...", ["The man wished for the unicorn to live again...", "The man wished to undo what he had done... "], ["knight1_2_2_2_1_1", "knight1"])
func knight1_2_2_2_1_1():
	add_choice("The man wished for the unicorn to live again...", ["And it was so."], ["conclude"])
func knight1_2_2_2_2():
	add_choice("And seeing the man, turned to flee...", ["It fled."], ["conclude"])
