function Camera() constructor
{
	static init = function(width, height, object)
	{		
		view_enabled = true;
		view_visible[0] = true;
		
		view_xport[0] = 0;
		view_yport[0] = 0;
		
		view_wport[0] = width;
		view_hport[0] = height;

		view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, object, -1, -1, 200, 200)
		window_set_rectangle(0, 0, 1280, 720)
	}
	
	static getWidth = function() {return view_wport[0];}
	static getHeight = function() {return view_hport[0];}

	static getPosX = function() {return view_xport[0];}
	static getPosY = function() {return view_yport[0];}
}
