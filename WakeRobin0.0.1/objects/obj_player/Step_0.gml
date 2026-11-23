// Movement


if (keyboard_check(leftKey))
{
	sprite_index = PlayerSpriteLeft;
    left = true;
}else{
	left = false;
}
if (keyboard_check(rightKey))
{
	sprite_index = PlayerSpriteRight;
	right = true;
}else{
	right = false;
}
if (keyboard_check(upKey))
{
	sprite_index = PlayerSpriteUp;
    up = true;
}else{
	up = false;
}
if (keyboard_check(downKey))
{
	sprite_index = PlayerSpriteDown;
    down = true;
}else{
	down = false;
}



// Move
if (left){
	move_and_collide(-PlayerSpeed, 0, collide);
	if(currentFacing != playerDirection.Left){
		currentFacing = playerDirection.Left;
	}
}
if (right){
	move_and_collide(PlayerSpeed, 0, collide);
	if(currentFacing != playerDirection.Right){
		currentFacing = playerDirection.Right;
	}
}
if (up){
	move_and_collide(0, -PlayerSpeed, collide);
	if(currentFacing != playerDirection.Up){
		currentFacing = playerDirection.Up;
	}
}
if (down){
	move_and_collide(0, PlayerSpeed, collide);
	if(currentFacing != playerDirection.Down){
		currentFacing = playerDirection.Down;
	}
}