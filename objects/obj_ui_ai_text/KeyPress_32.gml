if dialogue_done {
    if global.ainter_index >= 3 {
        room_goto(Room1_1)
    }
    
    popup_enabled = false
    popup_allowed = false
    make_choice()
    reset_dialogue()
    
    audio_stop_all()
    audio_play_sound(msc_OfficeWork_Final, 1, true)
}