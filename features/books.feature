Feature: Viewing all books in the library

  Scenario: the books index page
    Given the library has lots of books
    When I go to the books index page
    Then I should see all of the books in the library