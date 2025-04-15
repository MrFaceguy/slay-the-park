extends Control

@export var card_spacing := 150.0
@export var start_offset := Vector2(0, 0)

func _ready():
	align_cards()

func align_cards():
	var x_pos := start_offset.x
	for card in get_children():
		if card is Control:
			card.position = Vector2(x_pos, start_offset.y)
			x_pos += card_spacing
