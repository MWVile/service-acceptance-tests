# frozen_string_literal: true

# Use Capybara "Visit" method to visit the webpage
# provided by the "path" variable
Given('I visit {string}') do |path|
  visit(path)
end

Then('the text {string} is displayed on the page') do |search_text|
  # Use RSPEC assertion to make sure text from variable 'search_text'
  # is on the page
  expect(page).to have_content(search_text)
end
