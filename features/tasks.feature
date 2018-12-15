Feature: Interact with tasks
  As a user
  I want see more information about a task 
  so that I can find out more about it
  
  Scenario: Add a task
    Given I am on the edit tasks page
    When I submit task
    Then I should be on the home page