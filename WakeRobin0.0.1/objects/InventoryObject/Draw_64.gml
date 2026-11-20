if ( inventoryOpen ){

for(var i = 0; i< array_length(Inventory); i++)
{
	var xx = 683 - ((InvWidth - 1) * InvPadding)/2 + (i mod InvWidth) * InvPadding;
	var yy = 384 - ((InvHeight - 1) * InvPadding)/2 + (i div InvWidth) * InvPadding;
	
	var hover = false;
	var sizeMod = InvAnims[i].Size;
	
	var mx = device_mouse_x_to_gui(0);
	var my = device_mouse_y_to_gui(0);
	
	
	var sw = sprite_get_width(InvSlot);
	var sh = sprite_get_height(InvSlot);
	var left = xx - sprite_get_xoffset(InvSlot) * sizeMod;
	var top = yy - sprite_get_yoffset(InvSlot) * sizeMod;
	
	var right = left + sw * sizeMod;
	var bottom = top + sh * sizeMod;
	if point_in_rectangle(mx, my, left, top, right, bottom)
	{
		hover = true;
		InvAnims[i].Size = lerp(InvAnims[i].Size, 1.1, .2);
	} else {
		InvAnims[i].Size = lerp(InvAnims[i].Size, 1, .1);
	}
	
	
	
	draw_sprite_ext(InvSlot, 0, xx, yy, 1*sizeMod, 1*sizeMod, 0, c_white, 1);
	
	if hover { draw_sprite_ext(InvSlot, 1, xx, yy, 1*sizeMod, 1*sizeMod, 0, c_white, 1); }
	
	if Inventory[i] != -1 {
		var Sprite = Inventory[i][0].Sprite; 
		draw_sprite_ext(Sprite, 0, xx, yy, 1 * sizeMod, 1 * sizeMod, 0, c_white, 1);
		
		//Amount 
		var Amount = Inventory[i][1];
		if Amount <1 {
			draw_set_halign(fa_right);
			draw_set_valign(fa_middle);
			draw_text_transformed(xx + 8, yy + 6, Amount, .2, .2, 0);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
		
			}
		}
	}
}


