Feature: Add employee
       As a manager
       So that the employee can enter availability information
       I want to add a new employee
       
Scenario: Add new student worker
    Given I am logged in as the manager
    When I click on 'New Employee'
    Then I should see a black form to fill
    When I select 'Student Worker' only the relevant fields should show
    Then I fill the form with the proper data
    When I click on 'Save'
    Then the system should display the new user and a notice saying 'User has been saved'
    
Scenario: Add new full time employee
    Given I am logged in as the manager
    When I click on 'New Employee'
    Then I should see a black form to fill
    When I select 'Full Time Employee' only the relevant fields should show
    Then I fill the form with the proper data
    When I click on 'Save'
    Then the system should display the new user and a notice saying 'User has been saved'
    
Scenario: Validation error
    Given I am logged in as the manager
    When I click on 'New Employee'
    Then I should see a black form to fill
    When I use invalid data
    And I click on 'Save'
    Then I should see a warning
    And the user was not saved