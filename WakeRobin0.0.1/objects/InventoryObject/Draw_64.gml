if ( inventoryOpen ){
    var ItemDescription = "";              //For later, currently does nothing. Will later on hold the objects description that will be displayed in a box under the inventory

for(var i = 0; i< array_length(Inventory); i++)
{
    var xx = 683 - ((InvWidth - 1) * InvPadding)/2 + (i mod InvWidth) * InvPadding;
    var yy = 384 - ((InvHeight - 1) * InvPadding)/2 + (i div InvWidth) * InvPadding;
    
    var hover = false;              //Variable used later to check if mouse is hovering over a slot. 
    var sizeMod = InvAnims[i].Size;
    
    var mx = device_mouse_x_to_gui(0);      //Finds the x of mouse
    var my = device_mouse_y_to_gui(0);      //Find the y of mouse
    
    
    var sw = sprite_get_width(InvSlot);
    var sh = sprite_get_height(InvSlot);

    //To read where each slot is individually
    var left = xx - sprite_get_xoffset(InvSlot) * sizeMod;              
    var top = yy - sprite_get_yoffset(InvSlot) * sizeMod;
    var right = left + sw * sizeMod;
    var bottom = top + sh * sizeMod;

    if point_in_rectangle(mx, my, left, top, right, bottom)   //If your mouse is hovering over a slot     
    {
        hover = true;  //Confirms you are hovering over a slot
        draw_sprite_ext(InvSlot, 0, xx, yy, 1*sizeMod, 1*sizeMod, 0, c_white, 1);
        InvAnims[i].Size = lerp(InvAnims[i].Size, 1.1, .2);
        
        /*if Inventory[i] != -1 {                                //If statement is used for later in creating the description box
            ItemDescription = Inventory[i][0].Description;
        
        } */              
    } else {
        draw_sprite_ext(InvSlot, 1, xx, yy, 1*sizeMod, 1*sizeMod, 0, c_white, 1);
        InvAnims[i].Size = lerp(InvAnims[i].Size, 1, .1);
    }
    
    
    
    
    if (Inventory [i] != -1) {
        draw_sprite(Inventory[i][0].Sprite, 0, xx, yy);
    
    }
}
}