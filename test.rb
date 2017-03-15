require "rubygems" 
require "test/unit" 
require "watir" 

class GoogleSearch < Test::Unit::TestCase 
    def setup 
        @browser ||= Watir::Browser.new :chrome 
    end 

    def teardown 
        @browser.close
    end 

    def test_search 
        @browser.goto "google.com" 
        @browser.text_field(:name => "q").set "watir" 
        @browser.div(:id => "resultStats").wait_until_present
        @browser.screenshots.save ("screenshot/GoogleSearch_chrome52.png")
        @browser.button.click 
        @browser.title == "watir - Google Search" 
    end 
end
