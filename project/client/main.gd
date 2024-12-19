extends Node2D

var cards = []
var p1_hand = []
var p2_hand = []
var hand = []
var centre = []
var lord = randi_range(0,2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]:
		for j in ["C","D","H","P"]:
			cards.append(i+"-"+j)
	cards.append("JOKER")
	cards.append("JOKER")
	randomize()
	cards.shuffle()
	p1_hand = cards.slice(0,16)
	p2_hand = cards.slice(16,33)
	hand = cards.slice(33,50)
	centre = cards.slice(50,53)
	if lord == 0:
		p1_hand.append_array(centre)
	elif lord == 2:
		p2_hand.append_array(centre)
	else:
		hand.append_array(centre)

func _process(delta: float) -> void:
	pass
