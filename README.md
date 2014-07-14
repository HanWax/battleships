Battleships
===========

Team Incas : Catherina, Hannah, Jeremy, Peter

Week 4 Project: Create an interactive battleships game



Classes
=======

Grid
====

The grid manages the collection of cells. 

Attributes:

- Size: the grid has a length and a width (defaults to square 10x10). These are set on initialisation
- Cells: the grid holds an array of cells 
- Ships: the grid holds an array of ships

Methods:

- Update -> collaborates with Cell. Updates cell attributes based on hit/miss
- Hit_or_miss -> collaborates with Cell. Checks whether player has scored a hit or a miss on the grid
