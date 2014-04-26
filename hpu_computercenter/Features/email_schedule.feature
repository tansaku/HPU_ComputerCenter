Feature: Email schedule
       As the manager
       So that employees are aware of the changes with no need to send the schedule manually
       I want to automatically email the schedule
       
Scenario: Send email after time trigger
    When it is the specified time for weekly email
    Then the system sends the schedule via email to all employees
  
Scenario: Send email after change in schedule
    Given the weekly schedule was already sent
    And there were changes in the schedule
    When the manager approves the changes
    Then the system sends the schedule via email to all employees