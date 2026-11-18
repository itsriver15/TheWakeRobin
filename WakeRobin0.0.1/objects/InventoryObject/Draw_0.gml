draw_set_font(global.font);

for (var i = 0; i < array_length(inv); i++ )
{
	
	var _xx = screen_board;
	var _yy = screen_board; 
	var _srp = sep; 
	
	var _color = c_blue; 
	
	
	
	
	draw_sprite(inv[i].sprite, 0, _xx, _yy + sep*i);
	
	
	
	if selected_item = i { _color = c_yellow};
	draw_set_color(_color);
	
	draw_text ( _xx + 16, _yy + sep*i, inv[i].name);
	
	
	draw_set_color(c_blue)







}