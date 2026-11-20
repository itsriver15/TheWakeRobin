if (keyboard_check_pressed(ord("I"))) {
inventoryOpen = !inventoryOpen;
}

if (keyboard_check_pressed(vk_space)) {
	var keyObject = instance_find(KeyObject, 0);
	
	if (keyObject != noone) {
		inv_add(Inventory, keyObject.Key, 1);
	
	}
}

if (keyboard_check_pressed(ord("R"))) {
	var keyObject = instance_find(KeyObject, 0);
	
	if (keyObject != noone) {
		inv_remove(Inventory, keyObject.Key, 1);
	
	}
}



/*for (var i = 0; i < array_length(Inventory); i++) {
    if Inventory[i] != -1 {
        if Inventory[i][0].Id == 1 {
            show_debug_message("Player has the key!");
        }
    }
} */