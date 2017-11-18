require 'Watir'

browser = Watir::Browser.new :chrome

browser.goto 'google.com'
browser.text_field(title: 'Search').set 'Austin, TX!'
browser.button(type: 'submit').click

puts browser.title
# => 'Austin, TX! - Google Search'

browser.quit
