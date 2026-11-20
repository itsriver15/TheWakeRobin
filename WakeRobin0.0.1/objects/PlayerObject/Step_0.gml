// Movement

if (keyboard_check(leftKey))
{
    sprite_index = PlayerSpriteLeft;
    x = x - PlayerSpeed;
}
if (keyboard_check(rightKey))
{
	sprite_index = PlayerSpriteRight;
    x = x + PlayerSpeed;
}
if (keyboard_check(upKey))
{
	sprite_index = PlayerSpriteUp;
    y = y - PlayerSpeed;
}
if (keyboard_check(downKey))
{
	sprite_index = PlayerSpriteDown;
    y = y + PlayerSpeed;
}
