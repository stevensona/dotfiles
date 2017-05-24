Pry.config.should_load_plugins = false
Pry.plugins["doc"].activate!
Pry.config.editor = 'vim'
Pry.config.theme = 'railscasts'

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 'n', 'next'

begin
  require 'awesome_print'
  AwesomePrint.pry!
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "Awesome Print not found"
end
