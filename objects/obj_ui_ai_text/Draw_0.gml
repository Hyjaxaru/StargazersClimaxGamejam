draw_set_colour(c_aqua)
draw_set_halign(fa_left)

if popup_enabled {
    draw_self();
    draw_set_font(fnt_terminal_regular_small)
    
    if loading_state {
        draw_loading_screen()
    }
    
    draw_set_colour(#9457EB)
    draw_text_ext(x+64, y+64, dialogue_string, 16, popup_width - 128)
    draw_set_colour(c_aqua)
    
    if dialogue_done {
        draw_set_font(fnt_terminal_regular)
        draw_text(x + 64, y + popup_height - 96, "Press [SPACE] to continue...")
    }
}