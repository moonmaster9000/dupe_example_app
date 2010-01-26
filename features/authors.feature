Feature: Viewing content related to authors

  Scenario: the books written by a particular author page
    Given an author with many books
    When I view the books page for that author
    Then I should see the name of that author
    And I should see all of the books written by that author