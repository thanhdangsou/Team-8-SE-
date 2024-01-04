extends Control
@onready var menu = $Menu
@onready var audio = $Audio


func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		toggle()
		
func toggle():
	visible = !visible
	get_tree().paused = visible


func _on_new_pressed():
	toggle()
	get_tree().change_scene_to_file("res://game_scene/level_1.tscn")


func _on_options_pressed():
	show_and_hide(audio, menu)

func show_and_hide(first, second):
	first.show()
	second.hide()

func _on_quit_pressed():
	get_tree().quit()

func _on_back_from_option_pressed():
	show_and_hide(menu, audio)

func volume(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, value)
	
func _on_music_value_changed(value):
	volume(1, value)
	
func _on_sound_fx_value_changed(value):
	volume(2,value)
