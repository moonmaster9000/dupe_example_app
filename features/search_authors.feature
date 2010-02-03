Feature: finding authors
  
  Scenario: searching for a particular author
    Given the site has many authors
    When I type some text into the author search form
    And I submit the form
    Then I should see any authors whose name at least partially matches my search text