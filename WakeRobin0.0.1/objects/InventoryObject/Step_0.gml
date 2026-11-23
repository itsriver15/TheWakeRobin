if (keyboard_check_pressed(ord("I"))) {             //I is the inventory button
inventoryOpen = !inventoryOpen;                     // makes whatever value it is currently become the opposite.  True to false, false to true
} 

if (keyboard_check_pressed(vk_space)) {
	var keyObject = instance_find(obj_keyObject, 0);       //creates blueprint of the key object that will be placed into the inventory
	
	if (keyObject != noone) {                          //if key object does exist then it will be added to the inventory by 1
		inv_add(Inventory, keyObject.Key, 1);
	
	}
}

if (keyboard_check_pressed(ord("R"))) {                   // Removes an object by one
	var keyObject = instance_find(obj_keyObject, 0);
	
	if (keyObject != noone) {
		inv_remove(Inventory, keyObject.Key, 1);
	
	}
}



for (var i = 0; i < array_length(Inventory); i++) {        //The temp function that when active will release a comment into the command line if it goes through the list and finds the item by its id. 
    if Inventory[i] != -1 {
        if Inventory[i][0].Id == 1 {
            show_debug_message("Player has the key!");     //Warning, will continue to print message endlessly 
        }
    }
} 
