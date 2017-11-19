extends TextureFrame

# The Exit Button Click Handler.
func _on_exit_button_pressed():
	call_deferred('_quit')

# The Quit function.
func _quit():
	get_tree().quit()


func _on_play_button_pressed():
	get_node("/root/global").goto_scene("res://test-map.tscn")
