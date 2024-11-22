enum MoveDirs
{
	Left = 0,
	Right,
	Up,
	Down,
}

function canMove(moveDir)
{
	
	if ( moveDir == MoveDirs.Left ) 
	{
		if ( keyboard_check(ord("A")) ) return true
		if ( keyboard_check(vk_left) ) return true
	}
	else if ( moveDir == MoveDirs.Right ) 
	{
		if ( keyboard_check(ord("D")) ) return true
		if ( keyboard_check(vk_right) ) return true
	}
	else if ( moveDir == MoveDirs.Up ) 
	{
		if ( keyboard_check(ord("W")) ) return true
		if ( keyboard_check(vk_up) ) return true
	}
	else if ( moveDir == MoveDirs.Down ) 
	{
		if ( keyboard_check(ord("S")) ) return true
		if ( keyboard_check(vk_down) ) return true
	}
	return false
}
