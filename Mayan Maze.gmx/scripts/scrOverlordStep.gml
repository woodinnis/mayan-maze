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
        scrStartMenu();
        break;
    }
    case MENU:
    {
        scrMainMenu();
        break;
    }
}
