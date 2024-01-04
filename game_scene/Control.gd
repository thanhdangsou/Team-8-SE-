extends Control


func _on_quit_button_down():
	get_tree().quit()


func _on_back_to_main_menu_button_down():
	get_tree().change_scene_to_file("res://MainMenu.tscn")
