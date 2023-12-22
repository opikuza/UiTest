@predefined
Feature: Smoke steps

#  @predefined1
#  @regression
#  Scenario: Predefined steps for Google
#    Given I open url "https://google.com"
#    Then I should see page title as "Google"
#    Then I type "Cucumber" into element with xpath "//input[@name='q']"
#    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
#    # Then I wait for 2 sec
#    Then I wait for element with xpath "//*[@id='res']" to be present
#    Then I should see page title contains "- Google Search"
#    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

@sign-in
Scenario: Test scenario for xpath validation sign in
  Given I open url "http://ask-stage.portnov.com/"
  Then I type "olga.pikuza88@gmail.com" into element with xpath "//*[@formcontrolname='email']"
  Then I type "234555" into element with xpath "//*[@formcontrolname='password']"
  And I click on element with xpath "//button[@type='submit']"
  And I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be present
  And I click on element with xpath "//h5[contains(text(),'Assignments')]"
  Then I wait for 2 sec
  And I click on element with xpath "//button[contains(span, 'Create New Assignment')] "
  Then I wait for 3 sec
  And I take screenshot

  @change-password
  Scenario: Change your password
    Given I open url "http://ask-stage.portnov.com/"
    Then I type "o.pikuza88@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Abc234555" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[text()='Settings']" to be present
    Then I click on element with xpath "//h5[text()='Settings']"
    Then I click on element with xpath "//button[.//span[text()='Change Your Password']]"
    Then I wait for 3 sec

    @registration-new-user
  Scenario: Test Scenario for new user registration
    Given I open url "http://ask-stage.portnov.com/#/registration"
    Then I type "Olya" into element with xpath "//input[@placeholder='First Name']"
    Then I type "Test" into element with xpath "//input[@placeholder='Last Name']"
    Then I type "olya_test@gmail.com" into element with xpath "//input[@placeholder='Email']"
    Then I type "111222" into element with xpath "//input[@placeholder='Group Code']"
    Then I type "234555" into element with xpath "//input[@placeholder='Password']"
    Then I type "234555" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then I confirm user account with email "olya_test@gmail.com"
    Then I wait for 3 sec

  @create-quiz-with-multiple-questions
  Scenario: Test scenario for xpath validation sign in
    Given I open url "http://ask-stage.portnov.com"
    Then I type "olga.pikuza88@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "234555" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
    And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    And I type "Test quiz" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    And I click on element with xpath "//mat-radio-button[3]"
    And I type "Test question" into element with xpath "//textarea[@formcontrolname='question']"
    And I wait for 1 sec
    And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
    And I type "Option 1" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
    And I type "Option 2" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
    And I create 5 options
    And I choose 5 as correct option
    Then I wait for 3 sec
