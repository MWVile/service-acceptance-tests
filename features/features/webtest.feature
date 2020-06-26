@webtest
Feature: Search on Google

- This feature will perform two searches on Google to verify that,
  the suite is configured correctly.
- One test will pass
- One test will fail, producing a screenshot, and saving the page HMTLs

@google @pass @browser
Scenario: Search for Gamma on Google
	Given I visit "https://www.google.co.uk/"
	Then the text "Terms" is displayed on the page
