Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end