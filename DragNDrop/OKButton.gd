extends TextureButton

func _on_Button_pressed():
	for node in Main.nodes:
		node.mouse_filter = 2
	get_node('/root/Node2D/Background/OkButton').disabled = true
	get_node('/root/Node2D/Background/HelpButton').disabled = true
	var flag = Main.check_victory()
	if flag:
		get_node('/root/Node2D/PanelWin').set_visible(true)
	else:
		get_node('/root/Node2D/PanelLose').set_visible(true)
