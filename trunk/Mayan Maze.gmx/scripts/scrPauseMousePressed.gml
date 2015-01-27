// Handle mouse/input functions

if(device_mouse_check_button_pressed(0,mb_left))
{
    instance_deactivate_object(self);   // Deactivate start button
    
//    show_debug_message("wargarrrble");
    global.gameState = PLAYING;
}
