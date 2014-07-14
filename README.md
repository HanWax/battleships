Battleships
===========

Week 4 Project: Create an interactive battleships game

Battleships is a two player game. Each player deploys 5 ships on a 10 x 10 grid. Each cell has a unique grid reference. Each player takes turns to call out a grid reference and the other players confirms whether it is a ‘hit’ or ‘miss’ if a ship is at that grid reference or not. The attacking players marks the ‘hit’ or ‘miss’ on their tracking grid. The defending player marks ‘hit’ or ‘miss’ on their primary grid. Players alternate turns. When every cell that comprises one ship has been ‘hit’, the defending player declares it sunk. When a player sinks all their opponent’s ships they win and the game ends. 

Player class:
-------------
The first responsibility of the player is to deploy their ships to the grid. This should be done by giving the grid references of the cells occupied by the ships. 

The second responsibility of the player is to attack the grid, by declaring the grid reference of the cell that it would like to attack. 

Each player possess two grids. 
(We anticipate that this might change, as the tracking grid is the same as the primary grid of the opposing player, minus the ships that have been deployed.)

Cell class:
-----------
Each cell has a grid reference.

Each cell should know whether it has been previously attacked or not.

Each cell should know whether it is occupied or empty.   
