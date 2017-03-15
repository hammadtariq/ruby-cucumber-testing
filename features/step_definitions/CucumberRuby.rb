require "watir-webdriver"
require "watir" 
require "rspec/expectations"
 
Given /^I have entered "([^"]*)" into the query$/ do |term|
  @browser ||= Watir::Browser.new :chrome
  @browser.goto "google.com"
  @browser.text_field(:name => "q").set term
end
 
When /^I click "([^"]*)"$/ do |button_name|
  @browser.button.click
end
 
Then /^I should see some results$/ do
  @browser.div(:id => "resultStats").wait_until_present
  @browser.div(:id => "resultStats").should exist 
  @browser.close
end