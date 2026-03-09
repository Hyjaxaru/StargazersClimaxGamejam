if choice_was_made{
    draw_self()
}

if choice_was_made and show_alert {
    draw_sprite_ext(exclamation_mrk, 0, x, y, 0.125, 0.125, 0, c_white, 1)
}