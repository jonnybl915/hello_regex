Feature: Regex

  Scenario: Email Form Validation
    Given I have the email address qa@boomtownroi.com
    When I validate the email address
    Then I expect it to be valid

  Scenario: Email Form Validation
    Given I have the email @google.com
    When I validate the email address
    Then I expect it to be invalid
