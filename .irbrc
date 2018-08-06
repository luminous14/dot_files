# Auto-complete for method names and such
require 'irb/completion'

# Awesomeprint replaces irb's default pretty printingwith fancier formatting
require "awesome_print"
AwesomePrint.irb!

# Loads simple IRB (without RVM notice)
IRB.conf[:PROMPT_MODE] = :SIMPLE


IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true

# A method for clearing the screen
def clear
  system('clear')
end
puts ("Loading ~/.irbc a file that loads everytime you load irb")

require 'rubygems'
require 'wirble'
Wirble.init
Wirble.colorize

require 'irb/ext/save-history'

#History configuration

IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
