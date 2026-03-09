if draw_image {
    draw_sprite_centered(draw_image_asset, draw_image_index, display_get_width() / 2, display_get_height() / 2)
    draw_set_font(fnt_terminal_regular)
    draw_set_colour(c_white)
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
    draw_text(16, 16, "Press [ENTER] to close image")
}