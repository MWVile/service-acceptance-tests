@webtest
Feature: Awesomeness
  #
  # @google @pass @browser
  # Scenario: visit Awesomeness
  # 	Given I visit Awesomeness UI
  # 	Then the text "Awesomeness" is displayed on the page
  #
  # @google @pass @browser
  # Scenario: Fill in Awesomeness form
  # 	Given I visit Awesomeness UI
  #   When I enter the first name of "Fred"
  #   And I enter the surname name of "Bloggs"
  #   And I click continue
  # 	Then the text "just now" is displayed on the page

  @google @pass @browser
  Scenario: visit Awesomeness
  	Given I check Awesomeness UI
