require 'rubygems'
require 'wirble'
require 'pp'
require 'irb_rocket'

# IRB
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:HISTORY_FILE] = "/Users/joe/.irb_history"

# Initialize
Thread.current['ums_user'] = "test@brightroll.com"

START_TIME = Time.now

colors = Wirble::Colorize.colors.merge(:refers => :light_purple, :comma => :light_blue)
Wirble::Colorize.colors = colors
Wirble.init
Wirble.colorize

puts START_TIME
