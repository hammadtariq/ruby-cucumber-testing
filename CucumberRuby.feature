Feature: Users must be able to search for content using Google.

    Scenario: Search for a term.
        Given I have entered "watir" into the query.
        When I click "search"
        Then I should see some results
