enum InterfaceDirection
{
	None = -1,
	Left = 0,
	Right,
	Up,
	Down
}

function MainInterface() constructor
{
	var width_ = 0;
	var height_ = 0;
//	var interfaceDirection1_ = InterfaceDirection.None;
//	var interfaceDirection2_ = InterfaceDirection.None;
	
	static init = function(_width, _height)
	{
		draw_set_colour(c_blue)
		width_ = _width;
		height_ = _height;
//		interfaceDirection1_ = _interfaceDirection1;
//		interfaceDirection2_ = _interfaceDirection2;
	}
	
	static draw = function(currentPercent)
	{
		var rw = room_width
		var rh = room_height
		
		draw_set_colour(c_blue)
		draw_rectangle(rw - width_ - 10, rh - height_ - 10, width_, height_, true)
		
		show_debug_message("{0} -- {1}", rw, rh)
	};
}