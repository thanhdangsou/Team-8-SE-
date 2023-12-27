extends Node2D





func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://world.tscn")


func _on_continue_pressed():
	pass # Replace with function body.


func _on_setting_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit();
