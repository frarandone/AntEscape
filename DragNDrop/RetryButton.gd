extends TextureButton


func _on_Button_pressed():
	for node in Main.nodes:
			node.mouse_filter = 0
	get_node('/root/Node2D/Background/OkButton').disabled = false
	get_node('/root/Node2D/Background/HelpButton').disabled = false
	get_node('/root/Node2D/PanelLose').set_visible(false)
