Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I have entered "(.*?)" into the "(.*?)" field$/) do |content, field|
  fill_in(field, :with => content)
end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

When(/^I click "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content(content)
end