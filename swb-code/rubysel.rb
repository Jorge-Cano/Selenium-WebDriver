require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
#the first step is to typically make a 'get' request
driver.get "http://google.com"

#next we will want to "FIND" the elements, this example executes by id
#the other common options are Xpath, Class Name, CSS, by link..
#often times it will be a hybrid, comes down to the best tool for the job..
# ex. inputs =driver.find_elements(:path, "//input")
#Xpath in IE is often fickle..
element = driver.find_element :name => "q"
element.send_keys "Selenium is magic!"

# webdriver has the convenient submit feature
element.submit
puts "Page title is#{driver.title}"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until {driver.title.start_with? "Selenium"}

puts "Page title is #{driver.title}"
driver.quit
