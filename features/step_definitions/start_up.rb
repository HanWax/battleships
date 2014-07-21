Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^I fill in "(.*?)" with "(.*?)"$/) do |data_type, value|
   fill_in(data_type, :with => value)
end

Then(/^I press button to "(.*?)"$/) do |button|
  click_button(button)
end
