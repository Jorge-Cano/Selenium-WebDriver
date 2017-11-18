require 'watir'
Watir::Browser.new
#^ will select Chrome by default

#all other browsers
=begin
Watir::Browser.new :firefox
Watir::Browser.new :internet_explorer
Watir::Browser.new :edge
Watir::Browser.new :safari
=end
