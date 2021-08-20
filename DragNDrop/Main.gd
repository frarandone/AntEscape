extends Node

var nodes
var solution1 = {}
var solution2 = {}
var current_conf = {}
var array_index = [0,1,2,3,4,5,6,7,8,9,10]

func shuffle_icons():
	var shuffled = array_index
	shuffled.shuffle()
	#print(shuffled)
	for i in range(11):
		var ran = shuffled[i]
		nodes[i].texture = solution1[nodes[ran]]
		current_conf[nodes[i]] = nodes[i].texture
	return current_conf
	

func _ready():
	nodes  = get_node('/root/Node2D/Control').get_children()
	# initializes solutions
	for node in nodes:
		solution1[node] = node.texture
	solution2 = solution1.duplicate()
	solution2[nodes[4]] = solution1[nodes[6]]
	solution2[nodes[5]] = solution1[nodes[7]]
	solution2[nodes[6]] = solution1[nodes[4]]
	solution2[nodes[7]] = solution1[nodes[5]]
	#shuffles tiles
	current_conf = shuffle_icons()
	
func update_conf():
	for node in nodes:
		current_conf[node] = node.texture
	
func check_victory():
	var flag = true
	for node in nodes:
		if current_conf[node] != solution1[node]:
			flag = false
	if flag == true:
		return flag
	else:
		flag = true
		for node in nodes:
			if current_conf[node] != solution2[node]:
				flag = false
	return flag 
