//Gettinvg the selected item
selected_item = -1;
for (i = 0; i < array_length.inv; i++)
{
	
	var _xx = screen_board;
	var _yy = screen_board + sep*i;
	
	
	
	if mouse_x > _xx && mouse < _xx+8 && mouse_y > _yy && mouse_y < _yy+8
	{
		selected_item = i;
	
	}
	 
	
	




}