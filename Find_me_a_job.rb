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

# wait = Selenium::WebDriver::Wait.new(:timeout => 15)

puts 'about to sleep ....snzzz 5 seconds!'
sleep 5
puts 'done sleeping, looking for popup!'

#fj
# if @driver.find_element(:css, '#fj').displayed?
if @driver.find_element(:css, '#prime-popover-div').displayed?
  @driver.find_element(:css, '#prime-popover-close-button').click
  puts 'I see the popup!!! it\'s closed'
else
  puts 'no pop up window!'
end
puts "Test Passed: popup closed"

# here's where we start going through the list of jobs
element = @driver.find_element(:css, '#sja1')
element.click
# element.



# (;css;'#sja1')

# @driver.find_element(:id, "prime-popover-close-button")

# #### Check that the table with the given id is displayed
# div = wait.until {
#    element = @driver.find_element(:id, "prime-popover-close-button")
#    element if element.displayed?
# }


# id="prime-popover-close-button"


