Feature: Searching For A Movie
  In order to find information about a movie
  As someone interested in movies
  I want to search for a movie name and see information about it

  Scenario: Finding out the year
    Given I have entered "Moonrise Kingdom" into the "Movie Search" field
    When I press "Search"
    Then I should see "2012"