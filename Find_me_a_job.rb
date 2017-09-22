require 'open-uri'
require 'HTTParty'
require 'xpath'
require 'crack'
require 'gmail'
require 'selenium-webdriver'

#We'll make it run on Indeed first

@initial_website_script_url = 'https://www.indeed.com'

@driver = Selenium::WebDriver.for :firefox
@driver.navigate.to @initial_website_script_url

element = @driver.find_element(:css, '#what')
element.click
element.clear
# add a clear whenever you sent input so you are sure of the values
element.send_keys 'QA'
element.submit

wait = Selenium::WebDriver::Wait.new(:timeout => 15)

#### Check that the table with the given id is displayed
div = wait.until {
   element = @driver.find_element(:id, "prime-popover-close-button")
   element if element.displayed?
}
puts "Test Passed: Book Table found" if table


# id="prime-popover-close-button"


