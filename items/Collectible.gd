extends Area2D

signal pickup

var credits = 'res://ui/Credits.tscn'

var textures = {'cherry': 'res://assets/sprites/cherry.png',
				'gem': 'res://assets/sprites/gem.png',
				'Diamond': 'res://assets/sprites/Diamond.png'}

func init(type, pos):
	$Sprite.texture = load(textures[type])
	position = pos

func _on_Collectible_body_entered(body):
	if $Sprite.texture == load(textures['Diamond']):
		get_tree().change_scene(credits)
	emit_signal('pickup')
	queue_free()
