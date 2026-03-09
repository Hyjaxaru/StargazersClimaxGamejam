// --- Player Movement --- //

// get move axis, using current keymap
var _inputh = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _inputv = keyboard_check(ord("S")) - keyboard_check(ord("W"))

move_and_collide(_inputh * SPEED, _inputv * SPEED, BOUNDING_TILES)


if _inputh != 0 or _inputv != 0 {
    var _sprite_dir = image_index
    
    if _inputh != 0 {
        // horizontal
        if _inputh > 0 {
            _sprite_dir = 1
        } else if _inputh < 0 {
            _sprite_dir = 5
        }
        
        // vertical
        if _inputv > 0 {
            _sprite_dir -= 1
        } else if _inputv< 0 {
            _sprite_dir += 1
        }
        
        image_index = _sprite_dir
    } else {
        // vertical
        if _inputv > 0 {
            _sprite_dir = 3
        } else if _inputv< 0 {
            _sprite_dir = 7
        }
        
        image_index = _sprite_dir
    }
}


// ---  Trigger Detection --- //

if !obj_ui_ai_text.popup_enabled and obj_ui_ai_text.popup_allowed {
    if touching_ai_trigger and keyboard_check_pressed(vk_space) {
        audio_stop_all()
        audio_play_sound(msc_LevelMusic_Final, 1, true)
        
        if global.ainter_index < array_length(global.ainter_items)
        with (obj_ui_ai_text) {
            global.ainter_index += 1
            popup_enabled = true
            reset_dialogue()
        }
    }
}

if touching_map_trigger and keyboard_check_pressed(vk_space) {
    room_goto(Map)
    obj_ui_ai_text.popup_allowed = true
    audio_stop_all()
    audio_play_sound(msc_Lament, 1, true)
}

touching_ai_trigger = false
touching_notes_trigger = false
touching_map_trigger = false