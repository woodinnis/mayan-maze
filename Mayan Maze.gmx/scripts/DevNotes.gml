/*
//  
//  This is Dev Notes for Mayan Maze
//
//  Mayan Maze is the rebuild, and refactor of Move Along, built for Game Design Workshop
//
//  Individual scripts from Move Along will be systematically refactored for use in Mayan Maze.
//  As new scripts are built, and integrated into Mayan Maze, they will be documented, tested, 
//  and checked off.


// 26 January 2015 //

Created basic folder structure, DevNotes, project.gmx file

Set five macros for Overlord System States
Created objOverlord
Created scrOverlordStep, scrOverlordCreate
Created roomMain
    - For initial testing purposes, no roomMenu will be used
    
Set Overlord scripts to events
Placed Overlord into roomMain
Set Overlord depth at -1000000

Created sprBtnStart
Created objBtnStart
Created scrPauseMenu
    - To handle Pause functions
    
Placed objBtnStart into roomMain
Create scrPauseMousePressed
    - To handle mouse input on the pause button

Clicking on objBtnStart in roomMain changes gameState from PAUSED to PLAYING

// 27 January 2015 //

// Creating a Pause button to replace the Start Button
// Renaming all Pause scripts for use as Start objects
Create sprBtnPause, objBtnPause
Duplicated scrBtnPause scripts, and renamed for used as BtnStart

Set Pause scripts to Pause button events
Placed objPauseButton into roomMain

Pause Cycle functional

Added Background bgMain

Created sprBlocks using original Move Along tiles
Implemented block randomization
    - Multiple subimages will randomly be displayed when building mazes from blocks
    
Created roomLvl1
    - To begin rebuilding, and testing gameplay

Created scrMainMenu, scrMainMousePressed
Set global.gameState to begin at MENU 

gameState MENU launches scrMainMenu
scrMenuMousePresses currently inactive

scrStartMousePressed launces roomLvl1 from roomMain
    - Draws objBtnPause
    - Clicking on objBtnPause does not cause scrPauseMenu to activate
    - objBtnStart does not reappear
    
Jason has identified the error in objBtnPause
    - Instance deactivates, causing system-wide wipe of object data
    - Redesign of Main menu will be needed
    
Added Pause image to index 1 of sprBtnStart

Removed instance_deactivate_object() from all Button scripts

Removed objBtnPause and associated scripts
Removed Main menu pressed script

Pause button Cycle rebuilt

// 3 February, 2015 //

Started the process of building for resolution independence
Using Jason Elliott's presentation as a starting point

Created scrOverlordScreenSize

OverlordScreenSize functional. A few minor glitches
    - Game window spawns partially outside viewable screen area.
    - Play surface aspect ratio requires width and height numbers to be sourced from each other.
        ie: screenHeight must equal display_get_width() and vice-versa
