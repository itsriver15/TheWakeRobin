//show_debug_message("E key pressed")
// Calls script for interacting with objects
with (obj_Interactable)
{
    if (collision_line(obj_player.x,obj_player.y,obj_player.x + lengthdir_x(40, obj_player.direction),obj_player.y + lengthdir_y(40, obj_player.direction),id,false,false))
    {
        scr_ObjectInteraction();
    }
}

// Calls the script for interacting with NPCs
with (obj_CharInteractable)
{
    if (collision_line(obj_player.x,obj_player.y,obj_player.x + lengthdir_x(40, obj_player.direction),obj_player.y + lengthdir_y(40, obj_player.direction),id,false,false))
    {
        scr_CharacterInteraction();
    }
}