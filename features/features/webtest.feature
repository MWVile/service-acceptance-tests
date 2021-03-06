@webtest
Feature: Awesomeness
  
  @google @pass @browser @ui
  Scenario: visit automation training
  	Given I visit automation training UI
  	Then the text "Automate an application" is displayed on the page

  @google @pass @browser @ui
  Scenario: visit Awesomeness
  	Given I visit Awesomeness UI
  	Then the text "Awesomeness" is displayed on the page

  @google @pass @browser @ui
  Scenario: Fill in Awesomeness form
  	Given I visit Awesomeness UI
    When I enter the first name of "Fred"
    And I enter the surname name of "Bloggs"
    And I click continue
  	Then the text "just now" is displayed on the page

  @google @pass @browser @ui
  Scenario: visit Awesomeness UI
  	Given I check Awesomeness UI

  @google @pass @browser @flaskapi
  Scenario: visit Awesomeness API
  	Given I check Awesomeness API

  @google @pass @browser @jaxrsapi
  Scenario: visit Awesomeness Jaxrs
  	Given I check Awesomeness Jaxrs

  @google @pass @browser @springmvcapi
  Scenario: visit Awesomeness SB MVC
  	Given I check Awesomeness SB MVC
