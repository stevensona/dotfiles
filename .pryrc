Pry.config.editor = 'vim'
Pry.config.theme = 'solarized'

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 'n', 'next'

begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError => err
  puts "awesome_print missing"
end
