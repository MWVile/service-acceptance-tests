@webtest
Feature: Search on Google

- This feature will perform two searches on Google to verify that,
  the suite is configured correctly.
- One test will pass
- One test will fail, producing a screenshot, and saving the page HMTLs

@google @pass @browser
Scenario: Search for Gamma on Google
	Given I visit Awesomeness UI
	Then the text "Awesomeness" is displayed on the page

  @google @pass @browser
  Scenario: Search for Gamma on Google
  	Given I visit Awesomeness UI
    When I enter the first name of "Fred"
    And I enter the surname name of "Bloggs"
    And I click continue
  	Then the text "just now" is displayed on the page
