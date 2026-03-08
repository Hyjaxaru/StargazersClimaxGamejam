if touching_notes_trigger or touching_map_trigger  {
    draw_sprite(INTERACT_SPRITE, 0, x, y+32)
}

if touching_ai_trigger and obj_ui_ai_text.popup_allowed {
    draw_sprite(INTERACT_SPRITE, 0, x, y+32)
}