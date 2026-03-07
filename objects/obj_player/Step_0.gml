// --- Player Movement --- //

// get move axis, using current keymap
var _inputh = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _inputv = keyboard_check(ord("S")) - keyboard_check(ord("W"))

move_and_collide(_inputh * SPEED, _inputv * SPEED, BOUNDING_TILES)


// ---  Trigger Detection --- //

if (touching_left_trigger) {
    show_debug_message("test")
}
touching_left_trigger = false