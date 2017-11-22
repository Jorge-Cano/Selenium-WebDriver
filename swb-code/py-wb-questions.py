from selenium import webdriver
from selenium.webdriver.common.keys import keys

# create a new Firefox session
driver = webdriver.Firefox()
driver.implicitly_wait(30)
driver.maximize_window()

# navigate to the application home page
driver.get("http://www.google.com")

# get the search text box
search_field = driver.find_element_by_id("1st-ib")
search_field.clear()

# enter search keyword and submit
search_field.send_keys("Selenium Webdriver Interview Questions")
search_field.submit()

# get the list of elements which are displayed after the search
# currently on result page using find_elemets_by_classname method
lists= driver.find_elemets_by_classname("_Rm")

# get the number of elements found
print ("Found " + str(len(lists)) + "searches:")

# iterate through each elements and print the text that is
# name of the search

i=0
for listitem in lists:
    print (listitem)
    i=i+1
    if(i>10);
        break

#close the browser window
driver.quit()
