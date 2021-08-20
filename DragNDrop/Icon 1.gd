extends TextureRect

func get_drag_data(position):
	
	var data = {}
	data['origin_node'] = self
	data['origin_texture'] = self.texture
	#print('origin texture:', data['origin_texture'], self.rect_size, self.rect_scale)
		
	var drag_texture = TextureRect.new()
	drag_texture.expand = true
	drag_texture.texture = texture
	drag_texture.rect_size = Vector2(650, 50)
		
	var control = Control.new()
	control.add_child(drag_texture)
	drag_texture.rect_position = -0.5 * drag_texture.rect_size
	set_drag_preview(control)
		
	return data
		
func can_drop_data(position, data):
	return true

func drop_data(position, data):
	
	data['target_node'] = self
	data['target_texture'] = self.texture
	#print('target texture:', data['target_texture'], self.rect_size, self.rect_scale)
	
	data['origin_node'].expand = true
	data['origin_node'].rect_size = Vector2(650,50)
	data['origin_node'].set_texture(data['target_texture'])
	
	texture = data['origin_texture']
	
	Main.update_conf()


