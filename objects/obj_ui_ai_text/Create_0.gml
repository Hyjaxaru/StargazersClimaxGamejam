// popup
popup_enabled = true
popup_allowed = true
popup_width = sprite_get_width(sprite_index)
popup_height = sprite_get_height(sprite_index)

// loading icon
loading_icon = spr_ui_loading
loading_icon_frame = 0
loading_icon_frame_count = sprite_get_number(loading_icon)

// loading area
loading_state = true
loading_popup_centre_x = x + popup_width / 2
loading_popup_centre_y = y + popup_height / 2
loading_popup_width = 512
loading_popup_height = 64
alarm[0] = 120 // 2 seconds @ 60 FPS

// random misinformation
randomise() // because random just isn't random these days
misinfo_index = random_range(0, array_length(global.MISINFORMATION) - 1)
misinfo_string = global.MISINFORMATION[misinfo_index]

// current line of dialogue
DIALOGUE_TIME_MIN = 45
DIALOGUE_TIME_MAX = 75
dialogue_current = global.ainter_items[global.ainter_index]
dialogue_index = 0
dialogue_string = ""
dialogue_done = false

// choices
dialogue_choice_index = -1
dialogue_choice_count = 0
dialogue_choice_selected = -1


// --- Functions --- //

function reset_dialogue() {
    misinfo_index = random_range(0, array_length(global.MISINFORMATION) - 1)
    misinfo_string = global.MISINFORMATION[misinfo_index]
    
    loading_state = true
    
    // current line of dialogue
    DIALOGUE_TIME_MIN = 45
    DIALOGUE_TIME_MAX = 75
    dialogue_current = global.ainter_items[global.ainter_index]
    dialogue_index = 0
    dialogue_string = ""
    dialogue_done = false
    
    // choices
    dialogue_choice_index = -1
    dialogue_choice_count = 0
    dialogue_choice_selected = -1
    
    alarm[0] = 120 // 2 seconds @ 60 FPS
}

function draw_rectangle_centered(x, y, w, h, outlined)
{
    var _x1 = x - w / 2
    var _y1 = y - h / 2
    var _x2 = x + w / 2
    var _y2 = y + h / 2
    draw_rectangle(_x1, _y1, _x2, _y2, outlined)
}

function draw_sprite_centered(sprite, subimg, x, y) {
    var _w = sprite_get_width(sprite)
    var _h = sprite_get_height(sprite)
    var _x = x - _w / 2
    var _y = y - _h / 2
    draw_sprite(sprite, subimg, _x, _y)
}

function draw_loading_screen() {
    //draw_rectangle_centered(loading_popup_centre_x, loading_popup_centre_y, loading_popup_width, loading_popup_height, true)
    draw_sprite_centered(loading_icon, loading_icon_frame, loading_popup_centre_x - 224 , loading_popup_centre_y + 16)
    draw_set_font(fnt_terminal_regular_small)
    draw_set_valign(fa_bottom)
    draw_text(loading_popup_centre_x - 192, loading_popup_centre_y, "Loading Ai\nFun Fact:")
    draw_set_valign(fa_top)
    draw_set_font(fnt_terminal_regular);
    draw_text_ext(loading_popup_centre_x - 192, loading_popup_centre_y, misinfo_string, 24, loading_popup_width)
}

function reset_dialogue_timer() {
    alarm[1] = random_range(DIALOGUE_TIME_MIN, DIALOGUE_TIME_MAX)
}

function append_dialogue() {
    var _next = dialogue_current[dialogue_index]
    
    // check if we need the user to make a choice
    if string_char_at(_next, 0) == "§" {
        dialogue_choice_count = real(string_char_at(_next, 2))
        append_dialogue_ext("Please select an option...\n")
    } else {
        dialogue_string += dialogue_current[dialogue_index]
        reset_dialogue_timer()
    }
    
    dialogue_index += 1
}

function append_dialogue_ext(text) {
    dialogue_string += text
}

function choiceMade(index) {
    switch index {
        case 1:
            return global.choice_made.publicTransport
            or global.choice_made.solarPanels
            or global.choice_made.carbonCapture
        case 2:
            return global.choice_made.windFarmWater
            or global.choice_made.windFarmLand
            or global.choice_made.nuclearPower
            or global.choice_made.ignorePower
        case 3:
            return global.choice_made.cultivateFarms
            or global.choice_made.importFood
            or global.choice_made.roofTopFarms
        case 4:
            return global.choice_made.buildDesal
            or global.choice_made.buildDams
        case 5:
            return global.choice_made.buildDataCentre
            or global.choice_made.STOP
    }
}

// actions (all the things that happen)
function choice1(selection) {
    switch selection {
        case 0:
            global.choice_made.publicTransport = true
            break
        case 1:
            global.choice_made.solarPanels = true
            break
        case 2:
            global.choice_made.carbonCapture = true
            break
    }
}

function choice2(selection) {
    switch selection {
        case 0:
            global.choice_made.windFarmWater = true
            break
        case 1:
            global.choice_made.windFarmLand = true
            break
        case 2:
            global.choice_made.nuclearPower = true
            break
        case 3:
            global.choice_made.ignorePower = true
            break
    }
}

function choice3(selection) {
    switch selection {
        case 0:
            global.choice_made.cultivateFarms = true
            break
        case 1:
            global.choice_made.importFood = true
            break
        case 2:
            global.choice_made.roofTopFarms = true
            break
    }
}

function choice4(selection) {
    switch selection {
        case 0:
            global.choice_made.buildDesal = true
            break
        case 1:
            global.choice_made.buildDams = true
            break
    }
}

function choice5(selection) {
    switch selection {
        case 0:
            global.choice_made.buildDataCenter = true
            break
        case 1:
            global.choice_made.STOP = true
            break
    }
}