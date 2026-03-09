function return_to_office() {
    audio_stop_all()
    audio_play_sound(msc_OfficeWork_Final, 1, true)
    room_goto(Room1)
}