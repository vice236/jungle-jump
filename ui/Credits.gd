extends Control

var logo_screen = 'res://ui/logo.tscn'
var counter = 0

var credits = ['Thanks For Playing!',
			   'Directed by\nNika Chkheidze',
			   'Produced by\nNika Chkheidze',
			   'Animation Designer\nNika Chkheidze',
			   'Animation Director\nNika Chkheidze',
			   'Audio Director\nNika Chkheidze',
			   'Programmer\nNika Chkheidze',
			   'Special Thanks To\n\nLuis Zuno (@Ansimuz) For "Sunny Land" Art\nAnd Everyone I Have Stolen Assets From.',
			   'Game Brought To You By Untitled Studios']

func _ready():
	
	pass

func next_credit():
	if counter < credits.size():
		get_node('TextureRect/Label').text = credits[counter]
		counter += 1
	else:
		get_tree().change_scene(logo_screen)

	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
