// Initialize player parameters

PlayerHP = 3;
PlayerSpeed = 10;


// Sprite setup

PlayerSpriteLeft = spr_player_left;
PlayerSpriteRight = spr_player_right;
PlayerSpriteUp = spr_player_up;
PlayerSpriteDown = spr_player_down;


// Key setup

leftKey = keyboard_get_map(ord("A"));
rightKey = keyboard_get_map(ord("D"));
upKey = keyboard_get_map(ord("W"));
downKey = keyboard_get_map(ord("S"));

// Collision Logic
left = false;
right = false;
up = false;
down = false;
collide = obj_collidable;
currentFacing = playerDirection.Right;

interactKey = keyboard_get_map(ord("E"));
pauseKey = keyboard_get_map(vk_escape);
inventoryKey = keyboard_get_map(vk_tab);

// Additional Setup

