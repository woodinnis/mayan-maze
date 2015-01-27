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

