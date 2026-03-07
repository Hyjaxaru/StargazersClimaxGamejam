// @description Player Movement

var _inputh = 0;
var _inputv = 0;

// get move axis, using current keymap
_inputh = keyboard_check(ord("D")) - keyboard_check(ord("A"));
_inputv = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// if movement is not zero, move
if _inputh != 0 or _inputv != 0
{
    var _dir = point_direction(0, 0, _inputh, _inputv)
    direction = _dir
    speed = lerp(speed, SPEED, ACCEL)
} else {
    speed = lerp(speed, 0, ACCEL)
}