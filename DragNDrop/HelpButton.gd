extends TextureButton


func _on_HelpButton_pressed():
	for node in Main.nodes:
			node.mouse_filter = 2
	get_node('/root/Node2D/Background/OkButton').disabled = true
	get_node('/root/Node2D/Background/HelpButton').disabled = true
	get_node('/root/Node2D/PanelHelp').set_visible(true)

