extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_RetryHelpButton_pressed():
	for node in Main.nodes:
			node.mouse_filter = 0
	get_node('/root/Node2D/Background/HelpButton').disabled = false
	get_node('/root/Node2D/Background/OkButton').disabled = false
	get_node('/root/Node2D/PanelHelp').set_visible(false)

