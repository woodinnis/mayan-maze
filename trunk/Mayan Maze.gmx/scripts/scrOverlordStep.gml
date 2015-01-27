// Change behaviour based on game state

switch(global.gameState)
{
    case PAUSED:
    {
        scrPauseMenu();
        break;
    }
    case INTRO:
    case OUTRO:
    case PLAYING:
    {        
        show_debug_message("as;difha;dfh"); // Game is active and playing
        break;
    }
    case MENU:
}
