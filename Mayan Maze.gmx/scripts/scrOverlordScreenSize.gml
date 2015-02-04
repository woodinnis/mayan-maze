// Get and set screen size
screenWidth = display_get_height();
screenHeight = display_get_width();
//screenWidth = 480;
//screenHeight = 640;

window_set_size(screenWidth, screenHeight);

// Set aspect ratio
aspectRatio = (screenWidth/screenHeight) * (GAME_HEIGHT / GAME_WIDTH);
global.gameHeight = GAME_HEIGHT / aspectRatio;
global.gameWidth = GAME_WIDTH;

view_hview[0] = global.gameHeight;
view_wview[0] = global.gameWidth;
view_hport[0] = screenHeight;
view_wport[0] = screenWidth;

// Resize the viewing surface
surface_resize(application_surface, screenWidth, screenHeight);
