Feature: Searching For A Movie
  In order to find information about a movie
  As someone interested in movies
  I want to search for a movie name and see information about it

  Scenario: Searching for a movie with only one result
    Given I am on the homepage
    And I have entered "Moonrise Kingdom" into the "movie" field
    When I press "Search"
    Then I should see "Found 1 result"
    And I should see "Moonrise Kingdom"

  Scenario: Searching for a movie with more than one result
    Given I am on the homepage
    And I have entered "Amelie" into the "movie" field
    When I press "Search"
    Then I should see "Found 7 results"
    And I should see "Liebe Amelie"
    And I should see "Amélie"

  Scenario: Searching for a movie with more than one page of results
    Given I am on the homepage
    And I have entered "Saw" into the "movie" field
    When I press "Search"
    And I click "Show more results"
    Then I should see "I Saw the Devil"