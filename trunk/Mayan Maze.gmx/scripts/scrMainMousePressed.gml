// Handle mouse/input functions

// If currently in the main menu
if(device_mouse_check_button_pressed(0,mb_left) && room == roomMain)
{
    global.gameState = PLAYING; // Change game state
    
    room_goto(roomLvl1);    // Proceed to level 1    
           
    instance_deactivate_object(self);   // Deactivate Start button
}

