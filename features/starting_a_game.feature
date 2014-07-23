Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

Scenario: Registering
	Given I am on the homepage
	When I follow "New Game"
	Then I should see "Enter players"


	And I fill in "name" with "Charlotte"
	And I press button to "Start Battleships!"
	Then I should see "Charlotte: place your ships"
	
Scenario: Entering locations
	Given I have started a game with "Charlotte" and "Nikesh"
	When I fill in "location" with "A1"
	Then I should see 
