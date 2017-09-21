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

element = @driver.find_element(:css,'#what')
element.click
element.clear
# add a clear whenever you sent input so you are sure of the values
element.send_keys 'QA'

