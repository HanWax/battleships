Feature: Starting the game
	  In order to play battleships
	  As a nostalgic player
	  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Given I am on the enter_name page
    Then I should see "What's your name?"
		Then I should fill in my name
		And I should submit it


	Scenario:Loading game
		Given I am on the game page
		Then I should be able to place my boats
		And I should be able to start a game
