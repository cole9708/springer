Given (/^I navigate to the search page$/) do
  visit $BASE
end


Then (/^I should see logo item$/) do
  expect(@app.search.header).to have_logo
end

Then(/^I should see search bar item$/) do
  expect(@app.search.header).to have_search_bar
end
Then(/^I should see sign in item$/) do
  expect(@app.search.header).to have_sign_in
end

When(/^I search for (.+)/) do |search_term|
  @search_term =search_term
  @app.search.header.search_bar.set search_term
  @app.search.header.submit_search.click
end

Then (/^I am on the search results page/) do
  expect(@app.search_results).to have_search_title
end

Then(/I should be displayed the correct results/) do
  expect(@app.search_results.search_title.text).to include @search_term
end

And (/I go to a page number higher than expected/) do
  @current_page_results = @app.search_results.page_results.text.split(',').join.to_i
  @new_current_page_results = @current_page_results + 1
  @new_current_page_results.to_s
  @app.search_results.page_number.set @new_current_page_results
  @app.search_results.page_number.native.send_keys(:return)
end

Then(/pagination error message is displayed/) do
  expect(@app.search_results).to have_pagination_error
end