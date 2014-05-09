Given(/^I am logged in as an employee$/) do
  step 'that I am on the home page'
  page.should have_content "HPU Computer Center Scheduler"
  page.should have_content "Logged in as: John Doe"
end

Then(/^I should see the times I am working and the times I am available$/) do
  page.should have_content "Times Working"
  page.should have_content "Mon, Wed, Fri"
  page.should have_content "Times Available"
  page.should have_content "Tues, Thurs"
end

