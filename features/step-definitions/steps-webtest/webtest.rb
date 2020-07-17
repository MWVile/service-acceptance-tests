# frozen_string_literal: true

# Use Capybara "Visit" method to visit the webpage
# provided by the "path" variable
Given('I visit Awesomeness UI') do ||
  visit(ENV['FLASK_SKELETONXL_UI_URL'])
end
Then('the text {string} is displayed on the page') do |search_text|
  # Use RSPEC assertion to make sure text from variable 'search_text'
  # is on the page
  expect(page).to have_content(search_text)
end

When("I enter the first name of {string}") do |firstname|
  fill_in("forename", with: firstname)
end

When("I enter the surname name of {string}") do |surname|
  fill_in("surname", with: surname)
end

When("I click continue") do
  click_button('submit_button')
end


Given('I check Awesomeness UI') do ||
  url = URI.parse(Env.flask_skeletonxl_ui_url)
  req = Net::HTTP.new(url.host, url.port)
  req.use_ssl = true
  res = req.request_head(url.path)
  expect(res.code).to eq("200")

end
