Feature: Add availability
       As an employee
       So that my work shifts can be scheduled
       I want to add my available time
       
Scenario: See week's availability
    Given I am logged in as an employee
    When I click 'My Week'
    Then I should see the times I am working and the times I am available
    
Scenario: Edit availability
    Given I am logged in as an employee 
    And I am in 'My Week' page
    When I click 'Edit my availability'
    Then I should see the fields to edit
    When I make changes 
    And I click the 'Save' button
    Then I should see the changes I have made
    
Scenario: Cancel editing availability
    Given I am logged in as an employee 
    And I am in 'My Week' page
    When I click 'Edit my availability'
    Then I should see the fields to edit
    When I make changes 
    And I click the 'Cancel' button
    Then I should see 'My Week' page as it was before