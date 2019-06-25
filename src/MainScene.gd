extends Node2D

#TODO:
#Max volume, record keys
#Kai record 4-5 fade out

#Volume Slider
#Max X = 508
#Min X = 50
var move_slider = false

func _ready():
	pass # Replace with function body.

func _process(delta):
	for i in range(1, 33):
		if Input.is_action_just_pressed("key_" + str(i)):
			HighlightKey(true, i)
			get_node("Audio" + str(i)).play(0)
		elif Input.is_action_just_released("key_" + str(i)):
			HighlightKey(false, i)

func _input(event):
	pass

func ConvertId(id):
	if id == 1:
		return 1
	if id == 2:
		return 2
	if id == 3:
		return 3
	if id == 4:
		return 24
	if id == 5:
		return 12
	if id == 6:
		return 13
	if id == 7:
		return 4
	if id == 8:
		return 25
	if id == 9:
		return 14
	if id == 10:
		return 5
	if id == 11:
		return 26
	if id == 12:
		return 15
	if id == 13:
		return 16
	if id == 14:
		return 6
	if id ==  15 :
		return 27
	if id ==  16 :
		return 17
	if id ==  17 :
		return 7
	if id ==  18 :
		return 28
	if id ==  19 :
		return 18
	if id ==  20 :
		return 19
	if id ==  21 :
		return 8
	if id ==  22 :
		return 29
	if id ==  23 :
		return 20
	if id ==  24 :
		return 9
	if id ==  25 :
		return 30
	if id ==  26 :
		return 21
	if id ==  27 :
		return 22
	if id ==  28 :
		return 10
	if id ==  29 :
		return 31
	if id ==  30 :
		return 23
	if id ==  31 :
		return 11
	return id #32 = 32 

func HighlightKey(on, id):
	if on:
		get_node("key_" + str(ConvertId(id))).show()
	else:
		get_node("key_" + str(ConvertId(id))).hide()

func _on_hide_keys_pressed():
	$show_keys_yes.hide()
	$show_keys_no.show()
	$keyboard_keys.hide()


func _on_show_keys_pressed():
	$show_keys_no.hide()
	$show_keys_yes.show()
	$keyboard_keys.show()
