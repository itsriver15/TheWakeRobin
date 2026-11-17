// Movement

if (keyboard_check(leftKey))
{
    x = x - PlayerSpeed;
}
if (keyboard_check(rightKey))
{
    x = x + PlayerSpeed;
}
if (keyboard_check(upKey))
{
    y = y - PlayerSpeed;
}
if (keyboard_check(downKey))
{
    y = y + PlayerSpeed;
}