Battleships
===========

Team Incas : Catherina, Hannah, Jeremy, Peter

Week 4 Project: Create an interactive battleships game



Classes
=======

Grid
----

The grid manages the collection of cells. 

Attributes:

- Size
- Cells
- Ships

Methods:

- Update -> collaborates with Cell
- Hit_or_miss -> collaborates with Cell

Player class:
-------------
The first responsibility of the player is to deploy their ships to the grid. This should be done by giving the grid references of the cells occupied by the ships. 

The second responsibility of the player is to attack the grid, by declaring the grid reference of the cell that it would like to attack. 

Each player possess two grids. 
(We anticipate that this might change, as the tracking grid is the same as the primary grid of the opposing player, minus the ships that have been deployed.)

Cell class:
-----------
Upon initialisation a cell should:
> A grid reference
> Each cell has a grid reference.

Each cell should know whether:
> it has been previously attacked or not
> it is occupied or empty.   
