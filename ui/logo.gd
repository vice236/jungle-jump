extends Control

var title_screen = 'res://ui/TitleScreen.tscn'

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func end():
	get_tree().change_scene(title_screen)