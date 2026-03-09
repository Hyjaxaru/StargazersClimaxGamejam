// loading icon animation 
if loading_state {
    if loading_icon_frame > loading_icon_frame_count {
        loading_icon_frame = 0
    } else {
        loading_icon_frame += 1
    }
}

// detect choice
if dialogue_choice_count > 0 {
    for (var _i = 0; _i < dialogue_choice_count; _i++) {
        show_debug_message(_i);
        if keyboard_check_pressed(ord(string(_i+1))) {
            show_debug_message(dialogue_choice_selected);
            dialogue_choice_selected = _i;
            dialogue_choice_count = 0
            show_debug_message("Selected option: " + string(_i+1) + "\n")
            append_dialogue_ext("Selected option: " + string(_i+1) + "\n")
            append_dialogue()
        }
    }
}