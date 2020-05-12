extends Label

var width

func _init(my_position, my_text, my_width):
	autowrap = true
	text = my_text
	width = my_width
	rect_size = Vector2(my_width, 0)
	rect_position = my_position
	
func _ready():
	reset_color()

func reset_color():
	set("custom_colors/font_color", Color.black)

	
func set_color(color):
	set("custom_colors/font_color", Color.white)

func _physics_process(delta):
	set_size(Vector2(width, 0))
