Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

Scenario: Registering
	Given I am on the homepage
	When I follow "New Game"
	Then I should see "What's your name?"


	And I fill in "name" with "Charlotte"
	And I press button to "Start Battleships!"
	Then I should see "Welcome Charlotte. Let's play!"
