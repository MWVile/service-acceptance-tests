# frozen_string_literal: true

# Use Capybara "Visit" method to visit the webpage
# provided by the "path" variable
Given('I visit Awesomeness UI') do ||
  visit(Env.flask_skeletonxl_ui_url + '/awesomeness')
end
Then('the text {string} is displayed on the page') do |search_text|
  # Use RSPEC assertion to make sure text from variable 'search_text'
  # is on the page
  expect(page).to have_content(search_text)
end

When('I enter the first name of {string}') do |firstname|
  fill_in('forename', with: firstname)
end

When('I enter the surname name of {string}') do |surname|
  fill_in('surname', with: surname)
end

When('I click continue') do
  click_button('submit_button')
end


Given('I check Awesomeness UI') do ||
  code = http_get_response_code(Env.flask_skeletonxl_ui_url + '/health')
  expect(code).to eq('200')
end

Given('I check Awesomeness API') do ||
  code = http_get_response_code(Env.flask_skeletonxl_api_url + '/health')
  expect(code).to eq('200')
end

Given('I check Awesomeness Jaxrs') do ||
  code = http_get_response_code(Env.sb_jaxrs_skeletonxl_api_url + '/actuator/health')
  expect(code).to eq('200')
end

Given('I check Awesomeness SB MVC') do ||
  code = http_get_response_code(Env.sb_mvc_skeletonxl_api_url + '/actuator/health')
  expect(code).to eq('200')
end
