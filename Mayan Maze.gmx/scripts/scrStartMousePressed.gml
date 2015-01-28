// Handle mouse/input functions

if(room == roomMain)
    room_goto(roomLvl1);

if(device_mouse_check_button_pressed(0,mb_left))
{   
    global.gameState = PLAYING; // Change game state
    
    instance_deactivate_object(self);   // Deactivate Start button
}
