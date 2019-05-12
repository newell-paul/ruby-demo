Feature: Ruby demo

  Scenario: Submit demo form with procured inputs
    Given I am on the seleniumhq test form
    When I get the first character in Star Wars api
    And  I complete the demo form with required data and outlier inputs
    Then submitting the form results in a "Input form with validations" message
