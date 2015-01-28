// Handle mouse/input functions

if(room == roomMain)
{
    room_goto(roomLvl1);
}

if(device_mouse_check_button_pressed(0,mb_left))
{
    switch(global.gameState)
    {
        
        case PLAYING: // Change game state
        {
            global.buttonStart.image_index = 1;    // Show Pause Button
            global.gameState = PAUSED;     // Change game state
            break;
        }
        case PAUSED:
        {
            global.buttonStart.image_index = 0;    // Show Start Button
            global.gameState = PLAYING;     // Change game state
            break;
        }
        case MENU:
        {
            global.buttonStart.image_index = 1;    // Show Pause Button
            global.gameState = PLAYING;     // Change game state
            break;
        }
    }
}
