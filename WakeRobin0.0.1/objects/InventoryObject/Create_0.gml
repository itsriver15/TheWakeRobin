inventoryOpen = false;
InvWidth = 3;
InvHeight = 3;
InvTotal = InvWidth * InvHeight;
InvPadding = sprite_get_width(InvSlot) + 3;       //Spacing between the slots   

Inventory = array_create(InvTotal, -1);        //The inventory
InvAnims = array_create(InvTotal, -1);

for (var i = 0; i < array_length(InvAnims); i++){
	InvAnims[i] = {Size: 1}

}



display_set_gui_size(1366, 769);


