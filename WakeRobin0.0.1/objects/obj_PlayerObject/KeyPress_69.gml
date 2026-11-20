//show_debug_message("E key pressed")
// Calls script for interacting with objects
with (obj_Interactable)
{
    if (collision_line(obj_PlayerObject.x,obj_PlayerObject.y,obj_PlayerObject.x + lengthdir_x(40, obj_PlayerObject.direction),obj_PlayerObject.y + lengthdir_y(40, obj_PlayerObject.direction),id,false,false))
    {
        scr_ObjectInteraction();
    }
}

// Calls the script for interacting with NPCs
with (obj_CharInteractable)
{
    if (collision_line(obj_PlayerObject.x,obj_PlayerObject.y,obj_PlayerObject.x + lengthdir_x(40, obj_PlayerObject.direction),obj_PlayerObject.y + lengthdir_y(40, obj_PlayerObject.direction),id,false,false))
    {
        scr_CharacterInteraction();
    }
}