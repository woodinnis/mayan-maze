// Create and draw main wall blocks

image_speed = 0;    // Set image speed to 0 to prevent animation

randomize();    // Set the randomizer seed to a new random value
image_index = irandom(sprite_get_number(sprBlocks) * room_speed);   // Randomize the pattern displayed on each tile
