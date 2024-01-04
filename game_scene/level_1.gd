extends Node2D

var countdown_time : int = 10
var current_time : float

func _ready() -> void:
	current_time = countdown_time
	update_label()

func _process(delta: float) -> void:
	if current_time > 0:
		current_time -= delta
		update_label()
	else:
		current_time = 0
		update_label()
		show_game_over_screen()

func update_label() -> void:
	var minutes : int = int(current_time) / 60
	var seconds : int = int(current_time) % 60
	$Label.text = str(minutes).pad_zeros(2) + ":" + str(seconds).pad_zeros(2)

func show_game_over_screen() -> void:
	get_tree().change_scene_to_file("res://game_scene/GameOver.tscn")
	#var game_over_scene = preload("res://game_scene/GameOver.tscn")
	#var game_over_instance = game_over_scene.instance()
	#get_tree().current_scene.add_child(game_over_instance)
