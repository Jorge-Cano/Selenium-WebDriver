require 'rubygems'
require 'selenium-webdriver'
#Selenium 3.7.0
#Python 2.7.10
#Ruby 2.2.3
#Watir 4.0, 6.8

driver = Selenium::WebDriver.for :chrome #:firefox
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
