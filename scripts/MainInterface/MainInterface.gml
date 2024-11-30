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
	__colorXP = c_red;
	__colorMana = c_blue;
	__colorStamina = c_yellow;
	__margin = 5;
	__width = 200;
	__height = 30;
	__posX = 50;
	__posY = 50;
	
	static setPos = function(_x, _y)
	{
		__posX = _x;
		__posY = _y;
	}
	
	static setSize = function(w, h)
	{
		__width = w;
		__height = h;
	}
	
	static setColor = function(xpColor, manaColor, staminaColor) 
	{
		__colorXP = xpColor;
		__colorMana = manaColor;
		__colorStamina = staminaColor;
	}
	
	static draw = function(_xp = -1, _mana = -1, _stamina = -1 )
	{
		var oldColor  = draw_get_color()
		var localHeight = 0;
		
		
		
		// Отрисовка XP
		if ( _xp > -1 )
		{
			draw_set_color(c_black)
			draw_rectangle( __posX, __posY + localHeight, __posX + __width, __posY + __height  + localHeight, false)
			draw_set_color(__colorXP)
			draw_rectangle( __posX + __margin, __posY + __margin  + localHeight, __posX + __width / 100 * _xp - __margin, __posY + __height - __margin  + localHeight, false)
		}
		
		// Отрисовка маны
		if ( _mana > -1 )
		{
			localHeight += __height + __margin;
			draw_set_color(c_black)
			draw_rectangle( __posX, __posY + localHeight, __posX + __width, __posY + __height  + localHeight, false)
			draw_set_color(__colorMana)
			draw_rectangle( __posX + __margin, __posY + __margin  + localHeight, __posX + __width / 100 * _mana - __margin, __posY + __height - __margin  + localHeight, false)
		}
		
		// Отрисовка стамины
		if ( _stamina > -1 )
		{
			localHeight += __height + __margin;
			draw_set_color(c_black)
			draw_rectangle( __posX, __posY + localHeight, __posX + __width, __posY + __height  + localHeight, false)
			draw_set_color(__colorStamina)
			draw_rectangle( __posX + __margin, __posY + __margin  + localHeight, __posX + __width / 100 * _stamina - __margin, __posY + __height - __margin  + localHeight, false)
		}

		draw_set_color(oldColor)
	}
}